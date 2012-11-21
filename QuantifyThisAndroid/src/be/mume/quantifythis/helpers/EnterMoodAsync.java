package be.mume.quantifythis.helpers;

import android.content.Context;
import android.location.Location;
import android.os.AsyncTask;
import android.util.Log;
import be.mume.quantifythis.R;
import be.mume.quantifythis.model.MarkMoodModel;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


/**
 * Class to persist the mood and other attributes to the backend
 *
 * @author Nik Torfs
 */
public class EnterMoodAsync extends AsyncTask<Tuple<MarkMoodModel,Location>, Void, Void> {
    private final static String APP_ENGINE_URL = "quantifythisapp.appspot.com/DataService";
    private MarkMoodModel model;
    private Location location;
    private Context context;

    public EnterMoodAsync(Context context){
        this.context = context;
    }

    @Override
    protected Void doInBackground(Tuple<MarkMoodModel,Location>... tuples) {
        Tuple<MarkMoodModel, Location> tuple = tuples[0];
        model = tuple.first;
        location = tuple.second;
        getWeather();
        persist();
        return null;
    }

    /**
     * get the weather from the yahoo api
     */
    private void getWeather(){
        int woeid = getWoeid();
        if(woeid == 0){
            return; //commit without weather info
        }

        HttpClient httpClient = new DefaultHttpClient();
        HttpContext httpContext = new BasicHttpContext();

        String requestString = "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%3D" + woeid + "%20and%20u%3D'c'&format=json&callback=";
        HttpGet httpGet = new HttpGet(requestString);
        String responseString = "";
        try {
            HttpResponse response = httpClient.execute(httpGet, httpContext);
            HttpEntity entity = response.getEntity();
            responseString = EntityUtils.toString(entity);
        } catch (IOException e) {
            Log.e("QuantifyThis", "error: " + e.getLocalizedMessage(), e);
            return;
        }

        try {
            JSONObject json = new JSONObject(responseString);
            JSONObject resultSet = json.getJSONObject("query");
            JSONObject results = resultSet.getJSONObject("results");
            JSONObject channel = results.getJSONObject("channel");
            JSONObject item = channel.getJSONObject("item");
            JSONObject condition = item.getJSONObject("condition");
            int temperature = condition.getInt("temp");
            Log.i("QuantifyThis", "Temperature: " + temperature);
            model.setTemperature(temperature);
        } catch (JSONException e) {
            Log.e("QuantifyThis", "error: " + e.getLocalizedMessage());
        }

    }

    /**
     * get the woeid for the current location from the yahoo location api
     * @return woeid
     */
    private int getWoeid(){
        HttpClient httpClient = new DefaultHttpClient();
        HttpContext httpContext = new BasicHttpContext();
        String requestString = "http://where.yahooapis.com/geocode?location=" +
                location.getLatitude() + ',' + location.getLongitude() + "&flags=J&gflags=R&appid=" + context.getString(R.string.yahoo_api_key);
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
            int woeid = result.getInt("woeid");
            Log.i("QuantifyThis", "WOEID: " + woeid);
            return woeid;

        } catch (JSONException e) {
            Log.e("QuantifyThis", "error: " + e.getLocalizedMessage(), e);
        }
        return 0;
    }

    /**
     * Send the data to the backend
     */
    private void persist(){
        Log.i("QuantifyThis", "Persisting now");
        HttpClient httpclient = new DefaultHttpClient();
        HttpPost httppost = new HttpPost(context.getString(R.string.appengine_url));

        try {
            List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);
            nameValuePairs.add(new BasicNameValuePair("request", "addMood"));
            nameValuePairs.add(new BasicNameValuePair("mood1", model.getCat1() + ""));
            nameValuePairs.add(new BasicNameValuePair("mood2", model.getCat2() + ""));
            nameValuePairs.add(new BasicNameValuePair("mood3", model.getCat3() + ""));
            nameValuePairs.add(new BasicNameValuePair("mood4", model.getCat4() + ""));
            nameValuePairs.add(new BasicNameValuePair("mood5", model.getCat5() + ""));
            nameValuePairs.add(new BasicNameValuePair("sleephours", model.getAmountOfSleep() + ""));
            nameValuePairs.add(new BasicNameValuePair("sleepeff", model.getSleepQuality() + ""));
            nameValuePairs.add(new BasicNameValuePair("bpm", model.getHeartRate() + ""));
            httppost.setEntity(new UrlEncodedFormEntity(nameValuePairs));

            HttpResponse response = httpclient.execute(httppost);

            Log.i("QuantifyThis", "Persist response: " + response.getStatusLine());
        } catch (ClientProtocolException e) {
            Log.e("QuantifyThis", "ClientProtocolException: " + e.getLocalizedMessage());
        } catch (IOException e) {
            Log.e("QuantifyThis", "IOException: " + e.getLocalizedMessage());
        }
    }
}
