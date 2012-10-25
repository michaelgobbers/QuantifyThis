package be.mume.quantifythis.adapters;

import java.util.ArrayList;

import be.mume.quantifythis.R;
import be.mume.quantifythis.adapters.calendarevent.CalendarEvent;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

/**
 * Data Adapter for the list in the AgendaFragment it is responsible for creating each item view with the correct data in it. This is done with the getView() method.
 * Each Item in the ListView contains 4 TextViews, 1 for the event title, 1 for the event description, 1 for the event start time and 1 for the event end time.
 * 
 * @author michaelgobbers
 *
 */
public class AgendaAdapter extends BaseAdapter {
	
	private ArrayList<CalendarEvent> events;
	
	public AgendaAdapter(){
		events = new ArrayList<CalendarEvent>();
	}

	@Override
	public int getCount() {
		return events.size();
	}

	public void addEvent(CalendarEvent event){
		this.events.add(event);
	}
	@Override
	public Object getItem(int position) {
		return events.get(position);
	}
	/**
	 * Method not being used at the moment.
	 */
	@Override
	public long getItemId(int position) {
		return 0;
	}

	/**
	 * To make a list efficient this list makes use of recycling. See http://developer.android.com/training/improving-layouts/smooth-scrolling.html for more info on list recycling.
	 */
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		AgendaViewHolder holder;
		if(convertView==null){
			LayoutInflater inflater = (LayoutInflater)parent.getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
			convertView = inflater.inflate(R.layout.list_item_agenda, parent, false);
			holder = new AgendaViewHolder();
			holder.titleView = (TextView) convertView.findViewById(R.id.event_title);
			holder.descriptionView = (TextView) convertView.findViewById(R.id.event_description);
			holder.startDateView = (TextView) convertView.findViewById(R.id.event_startdate);
			holder.endDateView = (TextView) convertView.findViewById(R.id.event_enddate);
			convertView.setTag(holder);
		} else {
			holder = (AgendaViewHolder) convertView.getTag();
		}
		
		holder.titleView.setText(events.get(position).title);
		holder.descriptionView.setText(events.get(position).description);
		holder.startDateView.setText(events.get(position).start.toString());
		holder.endDateView.setText(events.get(position).end.toString());
		return convertView;
	}
	/**
	 * This is a holder class needed for list recycling. Because inflating a layout is expensive it is best to keep these inflated layouts in memory. See http://developer.android.com/training/improving-layouts/smooth-scrolling.html for more info on the topic.
	 * @author michaelgobbers
	 *
	 */
	private class AgendaViewHolder{
		public TextView titleView;
		public TextView descriptionView;
		public TextView startDateView;
		public TextView endDateView;
	}

}
