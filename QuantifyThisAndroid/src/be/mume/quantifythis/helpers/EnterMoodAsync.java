package be.mume.quantifythis.helpers;

import android.location.Location;
import android.os.AsyncTask;
import android.util.Log;
import be.mume.quantifythis.model.MarkMoodModel;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: nik
 * Date: 02/11/12
 * Time: 17:04
 * To change this template use File | Settings | File Templates.
 */
public class EnterMoodAsync extends AsyncTask<Tuple<MarkMoodModel,Location>, Void, Void> {
    private MarkMoodModel model;
    private Location location;

    @Override
    protected Void doInBackground(Tuple<MarkMoodModel,Location>... tuples) {
        Tuple<MarkMoodModel, Location> tuple = tuples[0];
        model = tuple.first;
        location = tuple.second;
        getWeather();
        persist();
        return null;
    }

    private void getWeather(){
        HttpClient httpClient = new DefaultHttpClient();
        HttpContext httpContext = new BasicHttpContext();
        String requestString = "http://where.yahooapis.com/geocode?location=" +
                location.getLatitude() + ',' + location.getLongitude() + "&flags=J&gflags=R&appid=" + "dj0yJmk9OTFZSWlwM29rWVRFJmQ9WVdrOWVYQnNVMUZoTjJrbWNHbzlOakV4TnpNMk9UWXkmcz1jb25zdW1lcnNlY3JldCZ4PTky";
        HttpGet httpGet = new HttpGet(requestString);
        String responseString = "";
        try {
            HttpResponse response = httpClient.execute(httpGet, httpContext);
            HttpEntity entity = response.getEntity();
            responseString = EntityUtils.toString(entity);
        } catch (IOException e) {
            Log.e("QuantifyThis", "error: " + e.getLocalizedMessage(), e);
        }
    }

    private int getWoeid(){
        HttpClient httpClient = new DefaultHttpClient();
        HttpContext httpContext = new BasicHttpContext();
        String requestString = "http://where.yahooapis.com/geocode?location=" +
                location.getLatitude() + ',' + location.getLongitude() + "&flags=J&gflags=R&appid=" + "dj0yJmk9OTFZSWlwM29rWVRFJmQ9WVdrOWVYQnNVMUZoTjJrbWNHbzlOakV4TnpNMk9UWXkmcz1jb25zdW1lcnNlY3JldCZ4PTky";
        HttpGet httpGet = new HttpGet(requestString);
        String responseString = "";
        try {
            HttpResponse response = httpClient.execute(httpGet, httpContext);
            HttpEntity entity = response.getEntity();
            responseString = EntityUtils.toString(entity);
        } catch (IOException e) {
            Log.e("QuantifyThis", "error: " + e.getLocalizedMessage(), e);
        }

        try {
            JSONObject json = new JSONObject(responseString);
            JSONObject resultSet = json.getJSONObject("ResultSet");
            JSONArray results = resultSet.getJSONArray("Results");
            JSONObject result = results.getJSONObject(0);
            return result.getInt("woeid");

        } catch (JSONException e) {
            Log.e("QuantifyThis", "error: " + e.getLocalizedMessage(), e);
        }
        return 0;
    }

    private void persist(){

    }
}
