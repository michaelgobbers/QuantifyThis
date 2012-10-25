package be.mume.quantifythis.fragments;

import be.mume.quantifythis.R;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
/**
 * The Settings Fragment for the notifictions. This contains some  behavioural code to grey out certain items when an option is selected.
 * @author michaelgobbers
 */
public class PreferenceNotificationsFragment extends PreferenceFragment implements OnSharedPreferenceChangeListener{
	
	public PreferenceNotificationsFragment(){
		
	}
	@Override
	public void onCreate(Bundle savedInstanceState)
    {
	    super.onCreate(savedInstanceState);
	    addPreferencesFromResource(R.xml.pref_notifications);
	    
	    Context context = getActivity().getApplicationContext();
	    SharedPreferences settings = PreferenceManager.getDefaultSharedPreferences(context);
	    settings.registerOnSharedPreferenceChangeListener(this);
    }
	
	/**
	 * When a preference is changed this method will be called to check if a preference needs to be enabled/disabled and checked/unchecked.
	 */
	@Override
	public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
		//Preference Keys defined in pref_notifications.xml
		
		CheckBoxPreference agendaMode = (CheckBoxPreference) findPreference("pref_key_agenda_notification_mode");
		ListPreference amountMode = (ListPreference) findPreference("pref_key_notifications_amount");
		
		if(key.equals("pref_key_notification_enabled")){
			if(!sharedPreferences.getBoolean("pref_key_notification_enabled", true)){
				agendaMode.setEnabled(false);
				agendaMode.setChecked(false);
				amountMode.setEnabled(false);
			}
			else{
				agendaMode.setEnabled(true);
				if(sharedPreferences.getBoolean("pref_key_agenda_notification_mode", true)){
					amountMode.setEnabled(false);
					amountMode.setValue("0");
				}
				else
					amountMode.setEnabled(true);
			}
		}
		else if(key.equals("pref_key_agenda_notification_mode")){
			if(sharedPreferences.getBoolean("pref_key_agenda_notification_mode", true))
				amountMode.setEnabled(false);
			else
				amountMode.setEnabled(true);
		}
	}
}
