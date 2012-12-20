var clientId = '784611597419.apps.googleusercontent.com';
var apiKey = 'AIzaSyBlFAus1q27yw2zO9v9R5dhdS-f1LayZg4';
var scopes = 'https://www.googleapis.com/auth/calendar';
var apicallmade =false;

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
        makeApiCallCalendar();
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

function makeApiCallCalendar() {
  gapi.client.load('calendar', 'v3', function() {
    var request = gapi.client.calendar.events.list({
      'calendarId': 'primary'
    });
          
    request.execute(function(resp) {
      for (var i = 0; i < resp.items.length; i++) {
        var li = document.createElement('li');
        li.id="item";
        li.appendChild(document.createTextNode(resp.items[i].summary));
        document.getElementById('step').appendChild(li);
      }
    });
    loadGAE();
  });
}
