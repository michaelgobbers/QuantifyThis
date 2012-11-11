package be.mume.quantifythis;

import android.accounts.*;
import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.Toast;
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
		if(intent!=null)
			startActivity(intent);
	}

    protected void onGetAuthToken(Bundle bundle) {
        String auth_token = bundle.getString(AccountManager.KEY_AUTHTOKEN);
        new GetCookieTask().execute(auth_token);
    }

    private class GetCookieTask extends AsyncTask<String, Void, Boolean> {
        protected Boolean doInBackground(String... tokens) {
            try {
                // Don't follow redirects
                http_client.getParams().setBooleanParameter(ClientPNames.HANDLE_REDIRECTS, false);

                HttpGet http_get = new HttpGet("https://yourapp.appspot.com/_ah/login?continue=http://localhost/&auth=" + tokens[0]);
                HttpResponse response;
                response = http_client.execute(http_get);
                if(response.getStatusLine().getStatusCode() != 302)
                    // Response should be a redirect
                    return false;

                for(Cookie cookie : http_client.getCookieStore().getCookies()) {
                    if(cookie.getName().equals("ACSID"))
                        return true;
                }
            } catch (ClientProtocolException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } finally {
                http_client.getParams().setBooleanParameter(ClientPNames.HANDLE_REDIRECTS, true);
            }
            return false;
        }

        protected void onPostExecute(Boolean result) {
            new AuthenticatedRequestTask().execute("http://yourapp.appspot.com/admin/");
        }
    }

    private class AuthenticatedRequestTask extends AsyncTask<String, Void, HttpResponse> {
        @Override
        protected HttpResponse doInBackground(String... urls) {
            try {
                HttpGet http_get = new HttpGet(urls[0]);
                return http_client.execute(http_get);
            } catch (ClientProtocolException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            return null;
        }

        protected void onPostExecute(HttpResponse result) {
            try {
                BufferedReader reader = new BufferedReader(new InputStreamReader(result.getEntity().getContent()));
                String first_line = reader.readLine();
                Toast.makeText(getApplicationContext(), first_line, Toast.LENGTH_LONG).show();
            } catch (IllegalStateException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    private class GetAuthTokenCallback implements AccountManagerCallback<Bundle> {
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
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (AuthenticatorException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    };
}
