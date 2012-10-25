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

	@Override
	public long getItemId(int position) {
		return 0;
	}

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
	private class AgendaViewHolder{
		public TextView titleView;
		public TextView descriptionView;
		public TextView startDateView;
		public TextView endDateView;
	}

}
