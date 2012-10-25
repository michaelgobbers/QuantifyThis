package be.mume.quantifythis;

import java.util.List;

import android.preference.PreferenceActivity;
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
	
}
