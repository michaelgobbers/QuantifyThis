package be.mume.quantifythis.fragments;

import be.mume.quantifythis.R;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.PreferenceFragment;

public class PreferenceAccountFragment extends PreferenceFragment {

	/**
	 * The Settings Fragment for the accounts to be used. This preference is not in use at the moment but could become usefull when the underlying mood data is moved to App Engine.
	 */
	public PreferenceAccountFragment(){
		
	}
	@Override
	public void onCreate(Bundle savedInstanceState)
    {
	    super.onCreate(savedInstanceState);
	    addPreferencesFromResource(R.xml.pref_account);
	    ListPreference pref = (ListPreference) findPreference("pref_key_agenda_account");
	    Account[] accounts = AccountManager.get(getActivity()).getAccountsByType("com.google");
	    String[] accountEntries = new String[accounts.length];
	    for(int i=0;i<accountEntries.length;i++){
	    	accountEntries[i] = accounts[i].name;
	    }
	    pref.setEntries(accountEntries);
	    pref.setEntryValues(accountEntries);
	    if(pref.getValue()==null)
	    	pref.setValue(accountEntries[0]);
    }
}
