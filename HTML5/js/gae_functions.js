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
    var heartrate = $("#heartrate").val();
    
    if(eventId==''){
        if(temperature==null)
            if(heartrate=='')
                $.post("http://localhost:8888/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, sleephours: sleepHours, sleepeff: sleepEff} );
            else
                $.post("http://localhost:8888/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, sleephours: sleepHours, sleepeff: sleepEff, bpm: heartrate} );
        else
            if(heartrate=='')
                $.post("http://localhost:8888/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, sleephours: sleepHours, sleepeff: sleepEff, temp: temperature} );
            else
                $.post("http://localhost:8888/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, sleephours: sleepHours, sleepeff: sleepEff, temp: temperature, bpm: heartrate} );
    }else{
        if(temperature==null)
            $.post("http://localhost:8888/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, eventid: eventId, category: categoryId} );
        else
            $.post("http://localhost:8888/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5, eventid: eventId, category: categoryId, temp: temperature} );
    }
    
    //hide event id from entries list.
    $("#"+eventId).hide();
}

function loginAppEngine(){
    window.open('http://localhost:8888/LoginService', 'App Engine Login');
    var authorizeButton = document.getElementById('authorize-button-appengine');
    authorizeButton.style.visibility = 'hidden';
    return false;
}

function getEntryList(){
    $.get("http://localhost:8888/DataService", { request: "getMood", format: "json"}, function(resp){
        filterEvents(resp.entries); 
    }, "json");
}