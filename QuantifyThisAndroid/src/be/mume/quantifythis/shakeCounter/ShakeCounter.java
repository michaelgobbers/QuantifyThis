package be.mume.quantifythis.shakeCounter;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

/**
 * Created with IntelliJ IDEA.
 * User: nik
 * Date: 04/11/12
 * Time: 16:09
 * To change this template use File | Settings | File Templates.
 */
public class ShakeCounter implements SensorEventListener {
    private static final short FORCE = 2;
    private static final long TIME_TO_WAIT = 250000000L;

    private SensorManager sensorManager;
    private Sensor sensor;
    private ShakeCounterListener listener;

    private Vector3d direction = null;
    private boolean firstMovement = false;
    private int count = 0;
    private long lastDirectionChange = 0;

    public ShakeCounter(Context context){
        this.sensorManager = (SensorManager)context.getSystemService(Context.SENSOR_SERVICE);
        this.sensor =  sensorManager.getDefaultSensor(Sensor.TYPE_LINEAR_ACCELERATION);
    }

    /**
     * Utility method so activity can bind the accelerometer on resume,
     * otherwise the accelerometer stays bound when the phone is sleeping --> more battery usage
     */
    public void startListening(){
        this.sensorManager.registerListener(this, sensor, SensorManager.SENSOR_DELAY_NORMAL);
    }

    /**
     * Utility method so activity can unbind the accelerometer on stop,
     * otherwise the accelerometer stays bound when the phone is sleeping --> more battery usage
     */
    public void stopListening(){
        this.sensorManager.unregisterListener(this);
    }

    public void registerListener(ShakeCounterListener listener){
        this.listener = listener;
    }

    public int getTotalCount(){
        return count;
    }

    public void reset(){
        this.count = 0;
    }

    @Override
    public void onSensorChanged(SensorEvent event) {
        float xAcceleration = event.values[0];
        float yAcceleration = event.values[1];
        float zAcceleration = event.values[2];

        float mAccell = (float) Math.sqrt(xAcceleration*xAcceleration + yAcceleration*yAcceleration + zAcceleration*zAcceleration);
        if(mAccell>FORCE){//force to take into account{
            Vector3d newDirection2 = new Vector3d(xAcceleration,yAcceleration,zAcceleration);
            if(direction == null){
                direction = newDirection2;
            }

            double dot = Math.abs(direction.dotProduct(newDirection2));
            double cosine = Math.acos(dot/(direction.length()*newDirection2.length()));

            if(cosine > Math.PI/3 && (lastDirectionChange == 0 || event.timestamp - lastDirectionChange > TIME_TO_WAIT)){
                if(firstMovement){
                    firstMovement = false;
                    count++;
                    listener.onShake();
                }else{
                    firstMovement = true;
                }
                lastDirectionChange = event.timestamp;
                direction =newDirection2;
            }
        }
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int i) {
    }
}
