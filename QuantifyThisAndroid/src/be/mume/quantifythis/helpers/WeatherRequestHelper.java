package be.mume.quantifythis.helpers;

import android.os.AsyncTask;
import android.util.Log;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;

import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: nik
 * Date: 02/11/12
 * Time: 12:08
 * To change this template use File | Settings | File Templates.
 */
public class WeatherRequestHelper extends AsyncTask<String, Void, String> {

    private WeatherRequestListener listener;
    private int woeid;
    private int degrees;

    public void setListener(WeatherRequestListener listener) {
        this.listener = listener;
    }

    @Override
    protected String doInBackground(String... strings) {
        HttpClient httpClient = new DefaultHttpClient();
        HttpContext httpContext = new BasicHttpContext();
        HttpGet httpGet = new HttpGet(strings[0]);
        String responseString = "";
        try {
            HttpResponse response = httpClient.execute(httpGet, httpContext);
            HttpEntity entity = response.getEntity();
            responseString = EntityUtils.toString(entity);
        } catch (IOException e) {
            Log.e("QuantifyThis", "error: " + e.getLocalizedMessage(), e);
        }
        return responseString;
    }

    @Override
    protected void onPostExecute(String s) {
        super.onPostExecute(s);
        listener.handleResults(s);
    }
}
