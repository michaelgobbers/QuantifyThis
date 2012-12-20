var clientId = '784611597419.apps.googleusercontent.com';
var apiKey = 'AIzaSyBlFAus1q27yw2zO9v9R5dhdS-f1LayZg4';
var scopes = 'https://www.googleapis.com/auth/appengine';

function sendMood(){
    //Mood values
    var value1  = document.getElementById("slider1").value;
    var value2  = document.getElementById("slider2").value;
    var value3  = document.getElementById("slider3").value;
    var value4  = document.getElementById("slider4").value;
    var value5  = document.getElementById("slider5").value;
    
    //sleep values
    var sleepHours = document.getElementById("slider-many-hours").value;
    var sleepEff = document.getElementById("slider-eff").value;
    
    $.post("http://localhost:8888/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, sleephours: sleepHours, sleepeff: sleepEff } );
    
    
}


function loadGAE() {
  gapi.client.setApiKey(apiKey);
  window.setTimeout(checkAuth,1);
  checkAuth();
}

function checkAuth() {
  gapi.auth.authorize({client_id: clientId, scope: scopes, immediate: true},
      handleAuthResult);
  gapi.auth.authorize({client_id: clientId, scope: scopes, immediate: true},
      handleAuthResult);
}

function handleAuthResult(authResult) {
  var authorizeButton = document.getElementById('authorize-button-appengine');
  if (authResult) {
    authorizeButton.style.visibility = 'hidden';
  } else {
    authorizeButton.style.visibility = '';
    authorizeButton.onclick = handleAuthClick;
   }
}

function handleAuthClick(event) {
    
  gapi.auth.authorize(
      {client_id: clientId, scope: scopes, immediate: false},
      handleAuthResult);
  return false;
}