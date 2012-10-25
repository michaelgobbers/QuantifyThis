package be.mume.quantifythis.adapters;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

/**
 * Data Adapter for the list in the HintsFragment it is responsible for creating each item view with the correct data in it. This is done with the getView() method.
 * Recycling not yet implemented as there is no data for the list available yet. See AgendaAdapter for an example on Adapters.
 * @author michaelgobbers
 *
 */
public class HintAdapter extends BaseAdapter {

	@Override
	public int getCount() {
		return 40;
	}

	@Override
	public Object getItem(int position) {
		return "example hint";
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
		text.setText("example hint "+Integer.toString(position));
		return text;
	}
}
