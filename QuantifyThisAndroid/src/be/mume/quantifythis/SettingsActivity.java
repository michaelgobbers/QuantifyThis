package be.mume.quantifythis;

import java.util.List;

import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.view.MenuItem;

/**
 * This is the settings activity. The SettingsFragment used here are specified in the res/xml folder.
 * Some Functional code is specified in the respective SettingsFragment Classes namely PreferenceAccountFragment and PreferenceNotificationsFragment.
 * @author michaelgobbers
 *
 */
public class SettingsActivity extends PreferenceActivity {
	public SettingsActivity(){
		
	}
	/**
	 * Overriding this method makes sure that the settings menu looks different on tablets and phones because of the use of headers that are specified in res/xml/preferences.xml
	 */
    @Override
    public void onBuildHeaders(List<Header> target){
        // Display the fragment as the main content.
        loadHeadersFromResource(R.xml.preferences, target);
    }

    @Override
    public void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        final ActionBar actionBar = getActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setDisplayShowTitleEnabled(false);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                // app icon in action bar clicked; go home
                Intent intent = new Intent(this, HomeActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                startActivity(intent);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
	
}
