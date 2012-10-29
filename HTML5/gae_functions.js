function sendMood(){
    var value1  = document.getElementById("slider1").value;
    var value2  = document.getElementById("slider2").value;
    var value3  = document.getElementById("slider3").value;
    var value4  = document.getElementById("slider4").value;
    var value5  = document.getElementById("slider5").value;
    
    $.post("http://localhost:8888/DataService", { request: "addMood", mood1: value1, mood2: value2, mood3: value3, mood4: value4, mood5: value5 } );
}