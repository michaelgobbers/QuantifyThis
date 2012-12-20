
//(function( $ ) {
$(document).on('pageinit', function(){
    var count=0;
    var msecsFirst = 0;
    var msecsPrevious = 0;

    reset = function() {
        count = 0;
    };

    tap = function() {
        var timeSeconds = new Date;
        msecs = timeSeconds.getTime();
        if((msecs - msecsPrevious) > 1000 * 2){
            count = 0;
        }

        if(count == 0){
            msecsFirst = msecs;
            count = 1;
        }
        else{
            var avg = 60000 * count / (msecs - msecsFirst);
            $("#heartrate_label").html(Math.round(avg));
            count++;
        }
        msecsPrevious = msecs;
    };

    $("#tapme").bind('tap', function(event){
        tap();
    });
});

   /* function startAccelerometerOutput(){
        var accElem = document.getElementById('acceleration'),
        accGravityElem = document.getElementById('acceleration-gravity'),
        handleDeviceMotionEvent = function(e) {

            // Get the current acceleration values in 3 axes and find the greatest of these

            var acc = e.acceleration,
                maxAcc = Math.max(acc.x, acc.y, acc.z),

            // Get the acceleration values including gravity and find the greatest of these

                accGravity = e.accelerationIncludingGravity,
                maxAccGravity = Math.max(accGravity.x, accGravity.y, accGravity.z);

            // Output to the user the greatest current acceleration value in any axis, as
            // well as the greatest value in any axis including the effect of gravity

            accElem.innerHTML = 'Current acceleration: ' + maxAcc +  'm/s^2';
            accGravityElem.innerHTML = 'Value incl. gravity: ' + maxAccGravity + 'm/s^2';
        };

    // Assign the event handler function to execute when the device is moving

        window.addEventListener('devicemotion', handleDeviceMotionEvent, false);
    }*/
