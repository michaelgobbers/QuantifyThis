package be.mume.quantifythis.helpers;

import android.os.AsyncTask;
import android.util.Log;
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
public class RetrieveMoodsAsync extends AsyncTask<String, Void, List<MoodModel>> {

    private RetrieveMoodListener listener;

    public void setListener(RetrieveMoodListener listener) {
        this.listener = listener;
    }

    @Override
    protected List<MoodModel> doInBackground(String... strings) {
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
        List<MoodModel> moodList = new ArrayList<MoodModel>();
        try {
            JSONObject json = new JSONObject(responseString);


        } catch (JSONException e) {
            Log.e("QuantifyThis", "ERROR: " + Log.getStackTraceString(e));
        }
        return moodList;
    }

    @Override
    protected void onPostExecute(List<MoodModel> moodModels) {
        super.onPostExecute(moodModels);
        if(listener!=null) listener.handleMood(moodModels);
    }
}
