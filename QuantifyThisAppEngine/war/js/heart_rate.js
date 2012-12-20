function startAccelerometerOutput(){
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
}