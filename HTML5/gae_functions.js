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
    
    //event details
    var eventId = $("#markeventid").val();
    var categoryId = $("#eventcategory").val();
    
    //weather details
    var temperature = $("#temperature").val();
    
    
    if(temperature==null)
        $.post("http://localhost:8888/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, sleephours: sleepHours, sleepeff: sleepEff, eventid: eventId, category: categoryId} );
    else
        $.post("http://localhost:8888/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, sleephours: sleepHours, sleepeff: sleepEff, eventid: eventId, category: categoryId, temp: temperature} );
}

function loginAppEngine(){
    window.open('http://localhost:8888/LoginService', 'App Engine Login');
    var authorizeButton = document.getElementById('authorize-button-appengine');
    authorizeButton.style.visibility = 'hidden';
    return false;
}