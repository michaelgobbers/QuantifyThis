
$.get("http://quantifythisapp.appspot.com/LoginService", {request: "loggedin"}, function(resp){
    var auth_button = $("#authorize-button-appengine");
    if(resp.loggedin == false){
        auth_button.display = "block";
    }

}, "json");

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
    
    //heart rate
    var heartrate = $("#heartrate_label label").html();

    if(eventId==''){
        if(temperature==null)
            if(heartrate=='')
                $.post("http://quantifythisapp.appspot.com/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, sleephours: sleepHours, sleepeff: sleepEff} );
            else
                $.post("http://quantifythisapp.appspot.com/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, sleephours: sleepHours, sleepeff: sleepEff, bpm: heartrate} );
        else
            if(heartrate=='')
                $.post("http://quantifythisapp.appspot.com/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, sleephours: sleepHours, sleepeff: sleepEff, temp: temperature} );
            else
                $.post("http://quantifythisapp.appspot.com/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, sleephours: sleepHours, sleepeff: sleepEff, temp: temperature, bpm: heartrate} );
    }else{
        if(temperature==null)
            $.post("http://quantifythisapp.appspot.com/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, eventid: eventId, category: categoryId} );
        else
            $.post("http://quantifythisapp.appspot.com/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, eventid: eventId, category: categoryId, temp: temperature} );
    }
    
    //hide event id from entries list.
    $("#"+eventId).hide();
}

function loginAppEngine(){
    window.open('http://quantifythisapp.appspot.com/LoginService', 'App Engine Login');
	$('#authorize-button-appengine').hide();
    return false;
}

function getEntryList(){
    $.get("http://quantifythisapp.appspot.com/DataService", { request: "getMood", format: "json"}, function(resp){
        filterEvents(resp.entries); 
    }, "json");
}