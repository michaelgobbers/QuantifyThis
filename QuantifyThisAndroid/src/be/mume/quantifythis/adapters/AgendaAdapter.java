package be.mume.quantifythis.adapters;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class AgendaAdapter extends BaseAdapter {

	@Override
	public int getCount() {
		return 40;
	}

	@Override
	public Object getItem(int position) {
		return "example appointment"+Integer.toString(position);
	}

	@Override
	public long getItemId(int position) {
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		if(convertView==null)
			convertView = new TextView(parent.getContext());
		TextView text = (TextView)convertView;
		text.setText("example appointment "+Integer.toString(position));
		return text;
	}

}
