var clientId = '784611597419.apps.googleusercontent.com';
var apiKey = 'AIzaSyBlFAus1q27yw2zO9v9R5dhdS-f1LayZg4';
var scopes = 'https://www.googleapis.com/auth/calendar';
var apicallmade =false;
var calendarAmount = 0;

function loadCalendar() {
  gapi.client.setApiKey(apiKey);
  window.setTimeout(checkAuthCalendar,1);
  checkAuthCalendar();
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
function setEventDetailsInMarkMood(id, summary){
    var markmoodeventsummary = $("#markevent");
    var marmoodeventid = $("#markeventid");
    markmoodeventsummary.text(summary);
    marmoodeventid.val(id);
}
function showCalendarsWithID(ids, list) {
    gapi.client.load('calendar', 'v3', function() {
        for(var i=0;i<ids.length;i++){
            var request = gapi.client.calendar.events.list({
                    'calendarId': ids[i]
            });
                  
            request.execute(function(resp, i) {
                for (var j = 0; j < resp.items.length; j++) {
                    var html = '<li onclick="setEventDetailsInMarkMood(\''+resp.items[j].id+'\',\''+ resp.items[j].summary +'\')"><a href="#MarkMyMood">'+resp.items[j].summary+'</a></li>';           
                    $(list).append(html);
                }
                $(list).listview("refresh");
            });
        }
    });
    
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
    showCalendarsWithID(ids, $('#events-list'));
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
