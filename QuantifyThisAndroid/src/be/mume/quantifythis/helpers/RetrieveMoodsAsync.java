package be.mume.quantifythis.helpers;

import android.os.AsyncTask;
import android.util.Log;
import be.mume.quantifythis.model.Mood;
import be.mume.quantifythis.model.MoodModel;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: nik
 * Date: 22/11/12
 * Time: 17:45
 * To change this template use File | Settings | File Templates.
 */
public class RetrieveMoodsAsync extends AsyncTask<String, Void, List<Mood>> {

    private RetrieveMoodListener listener;

    public void setListener(RetrieveMoodListener listener) {
        this.listener = listener;
    }

    @Override
    protected List<Mood> doInBackground(String... strings) {
        DefaultHttpClient httpClient = new DefaultHttpClient();
        httpClient.setCookieStore(CookieHelper.getInstance().getCookies());
        HttpContext context = new BasicHttpContext();

        String url = strings[0];

        List<NameValuePair> params = new LinkedList<NameValuePair>();
        params.add(new BasicNameValuePair("request", "getMood"));
        params.add(new BasicNameValuePair("format", "json"));
        String paramString = URLEncodedUtils.format(params, "utf-8");

        HttpGet get = new HttpGet(url + "?" + paramString);
        Log.i("QuantifyThis", "Sending request to: " + url + "?" + paramString);

        String responseString = "";
        try {
            HttpResponse response = httpClient.execute(get, context);
            HttpEntity entity = response.getEntity();
            responseString = EntityUtils.toString(entity);
        } catch (IOException e) {
            Log.e("QuantifyThis", "ERROR: " + Log.getStackTraceString(e));
        }

        Log.i("QuantifyThis", responseString);
        List<Mood> moodList = new ArrayList<Mood>();
        try {
            JSONObject json = new JSONObject(responseString);
            List<String> list = new ArrayList<String>();
            JSONArray array = json.getJSONArray("entries");
            for(int i = 0 ; i < array.length() ; i++){
               // list.add(array.getJSONObject(i).getString("heart"));
            	JSONObject thisObject = array.getJSONObject(i);
            	String heartrate = thisObject.getString("heart");
                System.out.println(heartrate);
                
                JSONObject mood = new JSONObject(thisObject.getString("mood"));
                String eventid = mood.getString("eventid");
                System.out.println(eventid);
                String moodvalues = mood.getString("moodvalue");
               moodvalues =  moodvalues.substring(1, moodvalues.length()-1);
               String[] moodies = moodvalues.split(",");
               
               String category = mood.getString("category");
                System.out.println(category);
                
                JSONObject weather = new JSONObject(thisObject.getString("weather"));
                String temp = weather.getString("temp");
                System.out.println(temp);
                
                JSONObject sleep = new JSONObject(thisObject.getString("sleep"));
                String hours = sleep.getString("hours");
                System.out.println(hours);
                String efficiency = sleep.getString("eff");
                System.out.println(efficiency);
                
                long date = thisObject.getLong("date");
                System.out.println(date);
                //nulls fixen
                
				int int_heartRate;
				if(heartrate!="null")
                	int_heartRate = Integer.parseInt(heartrate);
				else
					int_heartRate = Integer.MAX_VALUE;
                
				int int_hours;
				if(hours!="null")
					int_hours = Integer.parseInt(hours);
				else
					int_hours = Integer.MAX_VALUE;
				int int_efficiency;
				if(efficiency!="null")
					int_efficiency = Integer.parseInt(efficiency);
				else
					int_efficiency = Integer.MAX_VALUE;
				int int_temp;
				if(temp!="null")
					int_temp = Integer.parseInt(temp);
				else
					int_temp = Integer.MAX_VALUE;
                Mood myMood = new Mood(moodies, int_hours, int_efficiency, int_heartRate, int_temp, category, eventid, date);
                moodList.add(myMood);
            }

        } catch (JSONException e) {
            Log.e("QuantifyThis", "ERROR: " + Log.getStackTraceString(e));
        }
        return moodList;
    }

    @Override
    protected void onPostExecute(List<Mood> moodModels) {
        super.onPostExecute(moodModels);
        if(listener!=null) listener.handleMood(moodModels);
    }
}
