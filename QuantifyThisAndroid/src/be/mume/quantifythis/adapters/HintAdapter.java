package be.mume.quantifythis.adapters;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

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
