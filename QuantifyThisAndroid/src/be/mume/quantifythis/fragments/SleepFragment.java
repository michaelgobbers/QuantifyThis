package be.mume.quantifythis.fragments;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import be.mume.quantifythis.R;

public class SleepFragment extends Fragment implements OnSeekBarChangeListener{
	public SleepFragment() {
	}
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
    	View view = inflater.inflate(R.layout.fragment_sleep, container, false);
    	SeekBar hoursBar = (SeekBar) view.findViewById(R.id.hours_seek_bar);
    	hoursBar.setOnSeekBarChangeListener(this);
    	SeekBar efficiencyBar = (SeekBar) view.findViewById(R.id.sleep_efficiency_seek_bar);
    	efficiencyBar.setOnSeekBarChangeListener(this);
        return view;
    }
	@Override
	public void onProgressChanged(SeekBar seekBar, int progress,
			boolean fromUser) {
		//change the label under the hours slept bar if the id of the changed bar is that of the hours_seek_bar.
		if(seekBar.getId()==R.id.hours_seek_bar){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.hours_amount_label);
			label.setText(Integer.toString(progress));
		}
		else if(seekBar.getId()==R.id.sleep_efficiency_seek_bar){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.sleep_efficiency_amount_label);
			label.setText(Integer.toString(progress)+"%");
		}
		
	}
	@Override
	public void onStartTrackingTouch(SeekBar seekBar) {
	}
	@Override
	public void onStopTrackingTouch(SeekBar seekBar) {
		
	}
}
