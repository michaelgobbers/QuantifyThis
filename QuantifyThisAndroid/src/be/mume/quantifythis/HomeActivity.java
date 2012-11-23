package be.mume.quantifythis;

import android.accounts.*;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import be.mume.quantifythis.helpers.CookieHelper;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.CookieManager;


/**
 * This is the launch activity containing 4 buttons to the settings, mark mood, agenda and statistics view.
 * This activity contains 2 fragments. A fragment containing the buttons (HomeFragment) and a fragment containing a list of hints or something else(HintFragment).
 * @author michaelgobbers
 *
 */
public class HomeActivity extends FragmentActivity{
    DefaultHttpClient http_client = new DefaultHttpClient();
	
	@Override
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_home);
        AccountManager accountManager = AccountManager.get(getApplicationContext());
        Account[] accounts = accountManager.getAccountsByType("com.google");
        Account account = accounts[0];
        accountManager.getAuthToken(account, "ah",savedInstanceState , false, new GetAuthTokenCallback(), null);
    }

	public void launchActivity(View view){
		Intent intent = new Intent();
		if(view.getId()==R.id.button_launch_mark){
			intent.setClass(this, MarkActivity.class);
		}
		else if(view.getId()==R.id.button_launch_agenda){
			intent.setClass(this, AgendaActivity.class);
		}
		else if(view.getId()==R.id.button_launch_statistics){
			intent.setClass(this, StatisticsActivity.class);
		}
		else if(view.getId()==R.id.button_launch_settings){
			intent.setClass(this, SettingsActivity.class);
        }
		startActivity(intent);
	}

    protected void onGetAuthToken(Bundle bundle) {
        String auth_token = bundle.getString(AccountManager.KEY_AUTHTOKEN);
        GetCookieTask task = new GetCookieTask(
                this.getString(R.string.appengine_base_url),
                this.getString(R.string.appengine_login_prefix),
                "_ah/login?continue=http://localhost/&auth=");
        task.execute(auth_token);
    }

    private class GetCookieTask extends AsyncTask<String, Void, Boolean> {
        String baseUrl = "";
        String loginPrefix = "";
        String authPrefix = "";

        public GetCookieTask(String baseUrl, String loginPrefix, String authPrefix){
            this.baseUrl = baseUrl;
            this.loginPrefix = loginPrefix;
            this.authPrefix = authPrefix;
        }

        @Override
        protected Boolean doInBackground(String... tokens) {
            try {
                // Don't follow redirects
                http_client.getParams().setBooleanParameter(ClientPNames.HANDLE_REDIRECTS, false);

                HttpGet http_get = new HttpGet(this.baseUrl + authPrefix + tokens[0]);
                HttpResponse response;
                response = http_client.execute(http_get);
                if(response.getStatusLine().getStatusCode() != 302)
                    // Response should be a redirect
                    return false;

                for(Cookie cookie : http_client.getCookieStore().getCookies()) {
                    if(cookie.getName().equals("ACSID")){
                        // keep authentication session somewhere to be used in other activities
                        CookieHelper.getInstance().setCookies(http_client.getCookieStore());
                        return true;
                    }

                }

            } catch (ClientProtocolException e) {
                Log.e("QuantifyThis", "ClientProtocolException: " + Log.getStackTraceString(e));
            } catch (IOException e) {
                Log.e("QuantifyThis", "IOException: " + Log.getStackTraceString(e));
            } finally {
                http_client.getParams().setBooleanParameter(ClientPNames.HANDLE_REDIRECTS, true);
            }
            return false;
        }

        @Override
        protected void onPostExecute(Boolean result) {
            new AuthenticatedRequestTask().execute(this.baseUrl + this.loginPrefix);
    }
    }

    private class AuthenticatedRequestTask extends AsyncTask<String, Void, HttpResponse> {
        @Override
        protected HttpResponse doInBackground(String... urls) {
            try {
                HttpGet http_get = new HttpGet(urls[0]);
                return http_client.execute(http_get);
            } catch (ClientProtocolException e) {
                Log.e("QuantifyThis", "ClientProtocolException: " + Log.getStackTraceString(e));
            } catch (IOException e) {
                Log.e("QuantifyThis", "IOException: " + Log.getStackTraceString(e));
            }
            return null;
        }
    }

    private class GetAuthTokenCallback implements AccountManagerCallback<Bundle> {

        @Override
        public void run(AccountManagerFuture<Bundle> result) {
            Bundle bundle;
            try {
                bundle = result.getResult();
                Intent intent = (Intent)bundle.get(AccountManager.KEY_INTENT);
                if(intent != null) {
                    // User input required
                    startActivity(intent);
                } else {
                    onGetAuthToken(bundle);
                }
            } catch (OperationCanceledException e) {
                Log.e("QuantifyThis", "ERROR: " + Log.getStackTraceString(e));
            } catch (AuthenticatorException e) {
                Log.e("QuantifyThis", "ERROR: " + Log.getStackTraceString(e));
            } catch (IOException e) {
                Log.e("QuantifyThis", "ERROR: " + Log.getStackTraceString(e));
            }
        }
    };
}
