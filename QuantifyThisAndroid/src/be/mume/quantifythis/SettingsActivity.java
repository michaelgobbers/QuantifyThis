package be.mume.quantifythis;

import java.util.List;

import android.preference.PreferenceActivity;

public class SettingsActivity extends PreferenceActivity {
	public SettingsActivity(){
		
	}
    @Override
    public void onBuildHeaders(List<Header> target){
        // Display the fragment as the main content.
        loadHeadersFromResource(R.xml.preferences, target);
    }
	
}
