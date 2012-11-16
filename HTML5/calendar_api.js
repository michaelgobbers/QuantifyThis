var clientId = '784611597419.apps.googleusercontent.com';
var apiKey = 'AIzaSyBlFAus1q27yw2zO9v9R5dhdS-f1LayZg4';
var scopes = 'https://www.googleapis.com/auth/calendar';
var apicallmade =false;
var calendarAmount = 0;

var geteventListCallBack = function(calID) {
    return function(resp, textStatus) {
        var list = $("#events-list");
    for (var j = 0; j < resp.items.length; j++) {

        var html = '<li id="'+ resp.items[j].id +'"onclick="setEventDetailsInMarkMood(\''+resp.items[j].id+'\',\''+ resp.items[j].summary +'\',\''+ calID +'\')"><a href="#MarkMyMood"><h1>'+resp.items[j].summary+'</h1><p id="start"></p><p id="end"></p></a></li>';
        setEventTime(resp.items[j].id, calID);
        $(list).append(html);
    }
    $(list).listview("refresh");
    getEntryList();
    };
};


function setEventTime(eventID, calID){
    var request = gapi.client.calendar.events.get({
            'calendarId': calID,
            'eventId': eventID
    });
    request.execute(function(resp){
        var startEventTimeElement = $("#"+eventID+" #start");
        startEventTimeElement.html("Start Time: "+ resp.start.dateTime);
        var endEventTimeElement = $("#"+eventID+" #end");
        endEventTimeElement.html("End Time: "+ resp.end.dateTime);
    });
}
function loadCalendar() {
  getLocation();
  gapi.client.setApiKey(apiKey);
  window.setTimeout(checkAuthCalendar,1);
  checkAuthCalendar();
  
  $( "#eventsdays" ).bind( "change", function(event, ui) {
    showCalendars();
  });
}

function checkAuthCalendar() {
  gapi.auth.authorize({client_id: clientId, scope: scopes, immediate: true},
      handleAuthResultCalendar);
  gapi.auth.authorize({client_id: clientId, scope: scopes, immediate: true},
      handleAuthResultCalendar);
}

function handleAuthResultCalendar(authResult) {
  var authorizeButton = document.getElementById('authorize-button-calendar');
  if (authResult) {
    authorizeButton.style.visibility = 'hidden';
    if(!apicallmade){
        displayCategories();
        apicallmade=true;
    }
  } else {
    authorizeButton.style.visibility = '';
    authorizeButton.onclick = handleAuthClickCalendar;
   }
}

function handleAuthClickCalendar(event) {
  gapi.auth.authorize(
      {client_id: clientId, scope: scopes, immediate: false},
      handleAuthResultCalendar);
  return false;
}
function setEventDetailsInMarkMood(id, summary, calID){
    var markmoodeventsummary = $("#markevent");
    var marmoodeventid = $("#markeventid");
    var heartratebutton = $("#heartratebutton");
    var sleepbutton = $("#sleepbutton");
    var eventCat = $("#eventcategory");
    var heartratebuttontext= $("#heartratebuttontext");
    var sleepbuttontext= $("#sleepbuttontext");
    markmoodeventsummary.text(summary);
    marmoodeventid.val(id);
    heartratebutton.hide();
    sleepbutton.hide();
    eventCat.val(calID);
    heartratebuttontext.hide();
    sleepbuttontext.hide();
}
function returnFromMarkMood(){
    var markmoodeventsummary = $("#markevent");
    var marmoodeventid = $("#markeventid");
    var heartratebutton = $("#heartratebutton");
    var sleepbutton = $("#sleepbutton");
    var eventCat = $("#eventcategory");
    markmoodeventsummary.text("No event selected.");
    marmoodeventid.val("");
    heartratebutton.show();
    sleepbutton.show();
    eventCat.val("");
    heartratebuttontext.show();
    sleepbuttontext.show();
}

function showCalendarsWithID(ids) {
    gapi.client.load('calendar', 'v3', function() {
        var days = $("#eventsdays").val();
        var minDate=new Date();
        minDate.setDate(minDate.getDate()-days);
        for(var i=0;i<ids.length;i++){
            var request = gapi.client.calendar.events.list({
                    'calendarId': ids[i],
                    'timeMin' : minDate,
                    'timeMax' : new Date(),
                    'singleEvents' : true,
                    'orderBy' : "startTime"
            });
                  
            request.execute(geteventListCallBack(ids[i]));
        }
    });
    
}
function filterEvents(gaeEntries){
    for(var i=0; i< gaeEntries.length; i++){
        var eventid = gaeEntries[i].mood.eventid;
        if(eventid!=null){
            $("#"+eventid).hide();
        }
    }
}

function showCalendars(){
    var ids = new Array();
    var index = 0;
    for(var i = 0 ; i<calendarAmount;i++){
        var checkbox = $('#checkbox-'+i);
        var checked = $(checkbox).is(":checked");
        if(checked){
            ids[index] = $(checkbox).val();
            index++;
        }
    }
    $('#events-list').empty();
    showCalendarsWithID(ids);
}

function displayCategories(){
    gapi.client.load('calendar', 'v3', function() {
    var request = gapi.client.calendar.calendarList.list({
    });
          
    request.execute(function(resp) {
        var html = '<fieldset data-role="controlgroup" data-type="horizontal" data-role="fieldcontain" id="categories">';
        
        calendarAmount = resp.items.length;
      for (var i = 0; i < resp.items.length; i++) {
        
        html = html+'<input value="'+ resp.items[i].id +'" onclick="showCalendars()" type="checkbox" name="checkbox-'+i+'" id="checkbox-'+i+'" class="custom" /><label for="checkbox-'+i+'">'+ resp.items[i].summary +'</label>';
      }
      html = html + '</fieldset>';
      $('#categories-container').append(html).trigger('create');
      
    });
  });
}
