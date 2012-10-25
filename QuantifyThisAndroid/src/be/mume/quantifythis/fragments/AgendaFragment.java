package be.mume.quantifythis.fragments;

import java.util.Calendar;
import java.util.Date;


import be.mume.quantifythis.R;
import be.mume.quantifythis.adapters.AgendaAdapter;
import be.mume.quantifythis.adapters.calendarevent.CalendarEvent;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.preference.Preference;
import android.provider.CalendarContract;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;


/**
 * This fragment is using the calendar API with calendar intents: explanation of this API can be found at: http://developer.android.com/guide/topics/providers/calendar-provider.html
 */
public class AgendaFragment extends Fragment{
	
	private ListView listView;
		
	// Projection array. Creating indices for this array instead of doing
	// dynamic lookups improves performance.
	public static final String[] EVENT_PROJECTION = new String[] {
	    CalendarContract.Events._ID,             // 0
	    CalendarContract.Events.TITLE,                  // 1
	    CalendarContract.Events.DESCRIPTION,         // 2
	    CalendarContract.Events.DTSTART,         // 3
	    CalendarContract.Events.DTEND,         // 4
	};
	  
	// The indices for the projection array above.
	private static final int PROJECTION_ID_INDEX = 0;
	private static final int PROJECTION_EVENT_TITLE_INDEX = 1;
	private static final int PROJECTION_EVENT_DESCRIPTION_INDEX = 2;
	private static final int PROJECTION_EVENT_START_INDEX = 3;
	private static final int PROJECTION_EVENT_END_INDEX = 4;
	
	@Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		View view = inflater.inflate(R.layout.fragment_agenda, container);
    	listView = (ListView) view.findViewById(R.id.list_agenda);
    	listView.setAdapter(new AgendaAdapter());
        return view;
    }
	@Override
	public void onResume(){
		super.onResume();
		// Run query
		Cursor cur = null;
		ContentResolver cr = getActivity().getContentResolver();
		Uri uri = CalendarContract.Events.CONTENT_URI;
		
		Calendar c = Calendar.getInstance();
		c.setTime(new Date());
		c.add(Calendar.DATE, -1);  // Subtract 1 day of current time.
		
		String selection = "(" + CalendarContract.Events.DTSTART + " >  ?) AND (" +
		CalendarContract.Events.DTEND + " <= ?)";
		String[] selectionArgs = new String[] {Long.toString(c.getTimeInMillis()), Long.toString(new Date().getTime())}; 
		// Submit the query and get a Cursor object back. 
		cur = cr.query(uri, EVENT_PROJECTION, selection, selectionArgs, null);
		
		while (cur.moveToNext()) {
		    long calID = 0;
		    String eventTitle = null;
		    String eventDescription = null;
		    Date startDate =null;
		    Date endDate=null;
		    // Get the field values
		    calID = cur.getLong(PROJECTION_ID_INDEX);
		    eventTitle = cur.getString(PROJECTION_EVENT_TITLE_INDEX);
		    eventDescription = cur.getString(PROJECTION_EVENT_DESCRIPTION_INDEX);
		    startDate = new Date(cur.getLong(PROJECTION_EVENT_START_INDEX));
		    endDate = new Date(cur.getLong(PROJECTION_EVENT_END_INDEX));
		    // Add values to list adapter
		    AgendaAdapter adapter = (AgendaAdapter)listView.getAdapter();
		    adapter.addEvent(new CalendarEvent(eventTitle, eventDescription, startDate, endDate));
		    // notify adapter change to update listView.
		    adapter.notifyDataSetChanged();
		}
	}
}
