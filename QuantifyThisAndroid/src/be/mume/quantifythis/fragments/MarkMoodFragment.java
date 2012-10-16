package be.mume.quantifythis.fragments;

import be.mume.quantifythis.R;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

public class MarkMoodFragment extends Fragment implements OnSeekBarChangeListener{
	public MarkMoodFragment() {
	}
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
    	View view = inflater.inflate(R.layout.fragment_mark_mood, container, false);
    	SeekBar bar1 = (SeekBar) view.findViewById(R.id.seekBar1);
    	SeekBar bar2 = (SeekBar) view.findViewById(R.id.seekBar2);
    	SeekBar bar3 = (SeekBar) view.findViewById(R.id.seekBar3);
    	SeekBar bar4 = (SeekBar) view.findViewById(R.id.seekBar4);
    	SeekBar bar5 = (SeekBar) view.findViewById(R.id.seekBar5);
    	
    	bar1.setOnSeekBarChangeListener(this);
    	bar2.setOnSeekBarChangeListener(this);
    	bar3.setOnSeekBarChangeListener(this);
    	bar4.setOnSeekBarChangeListener(this);
    	bar5.setOnSeekBarChangeListener(this);
        return view;
    }
	@Override
	public void onProgressChanged(SeekBar seekBar, int progress,
			boolean fromUser) {
		if(seekBar.getId()==R.id.seekBar1){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.seekbar1_label);
			label.setText(Integer.toString(progress)+"%");
		}
		else if(seekBar.getId()==R.id.seekBar2){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.seekbar2_label);
			label.setText(Integer.toString(progress)+"%");
		}
		else if(seekBar.getId()==R.id.seekBar3){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.seekbar3_label);
			label.setText(Integer.toString(progress)+"%");
		}
		else if(seekBar.getId()==R.id.seekBar4){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.seekbar4_label);
			label.setText(Integer.toString(progress)+"%");
		}
		else if(seekBar.getId()==R.id.seekBar5){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.seekbar5_label);
			label.setText(Integer.toString(progress)+"%");
		}
		
	}
	@Override
	public void onStartTrackingTouch(SeekBar seekBar) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void onStopTrackingTouch(SeekBar seekBar) {
		// TODO Auto-generated method stub
		
	}
}
