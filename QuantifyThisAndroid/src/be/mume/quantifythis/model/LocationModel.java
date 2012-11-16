package be.mume.quantifythis.model;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;

/**
 * Class that listens to location updates and stores the last location
 *
 * @author Nik Torfs
 */
public class LocationModel implements LocationListener {

    LocationManager manager;
    Context context;
    Location lastLocation;
    public LocationModel(Context context){
        this.context = context;
        manager = (LocationManager) context.getSystemService(Context.LOCATION_SERVICE);
        lastLocation = manager.getLastKnownLocation(LocationManager.NETWORK_PROVIDER);
        manager.requestLocationUpdates(LocationManager.NETWORK_PROVIDER, 0, 5000, this);
    }

    @Override
    public void onLocationChanged(Location location) {
        lastLocation = location;
    }

    @Override
    public void onStatusChanged(String s, int i, Bundle bundle) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void onProviderEnabled(String s) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void onProviderDisabled(String s) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    public void stopTracking(){
        manager.removeUpdates(this);
    }

    public Location getLastLocation(){
        return this.lastLocation;
    }
}
