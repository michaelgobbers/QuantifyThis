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
		checkAndAdjustMoodTotal(seekBar);
		if(seekBar.getId()==R.id.seekBar1){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.seekbar1_label);
			label.setText(Integer.toString(seekBar.getProgress())+"%");
		}
		else if(seekBar.getId()==R.id.seekBar2){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.seekbar2_label);
			label.setText(Integer.toString(seekBar.getProgress())+"%");
		}
		else if(seekBar.getId()==R.id.seekBar3){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.seekbar3_label);
			label.setText(Integer.toString(seekBar.getProgress())+"%");
		}
		else if(seekBar.getId()==R.id.seekBar4){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.seekbar4_label);
			label.setText(Integer.toString(seekBar.getProgress())+"%");
		}
		else if(seekBar.getId()==R.id.seekBar5){
			View view = (View) seekBar.getParent();
			TextView label = (TextView) view.findViewById(R.id.seekbar5_label);
			label.setText(Integer.toString(seekBar.getProgress())+"%");
		}
		
	}
	@Override
	public void onStartTrackingTouch(SeekBar seekBar) {
	}
	@Override
	public void onStopTrackingTouch(SeekBar seekBar) {
	}
	
	private void checkAndAdjustMoodTotal(SeekBar seekBar) {
		View seekBarParent = (View) seekBar.getParent();
		SeekBar bar1 = (SeekBar) seekBarParent.findViewById(R.id.seekBar1);
    	SeekBar bar2 = (SeekBar) seekBarParent.findViewById(R.id.seekBar2);
    	SeekBar bar3 = (SeekBar) seekBarParent.findViewById(R.id.seekBar3);
    	SeekBar bar4 = (SeekBar) seekBarParent.findViewById(R.id.seekBar4);
    	SeekBar bar5 = (SeekBar) seekBarParent.findViewById(R.id.seekBar5);
    	int bar1Value=bar1.getProgress();
    	int bar2Value=bar2.getProgress();
    	int bar3Value=bar3.getProgress();
    	int bar4Value=bar4.getProgress();
    	int bar5Value=bar5.getProgress();
    	int totalValue = bar1Value+bar2Value+bar3Value+bar4Value+bar5Value;
    	if(bar1Value+bar2Value+bar3Value+bar4Value+bar5Value>100){
    		int amountToSubstract = (totalValue-100)/4;
    		int rest = (totalValue-100)%4;
    		
    		if(bar1.getId() != seekBar.getId())
    			if(bar1Value>=amountToSubstract+rest)
    				bar1.setProgress(bar1Value-amountToSubstract-rest);
    			else {
    				rest = (amountToSubstract+rest)-bar1Value;
    				bar1.setProgress(0);
    				
    			}
    		if(bar2.getId() != seekBar.getId())
    			if(bar2Value>=amountToSubstract+rest)
    				bar2.setProgress(bar2Value-amountToSubstract-rest);
    			else {
    				rest = (amountToSubstract+rest)-bar2Value;
    				bar2.setProgress(0);
    				
    			}
    		if(bar3.getId() != seekBar.getId())
    			if(bar3Value>=amountToSubstract+rest)
    				bar3.setProgress(bar3Value-amountToSubstract-rest);
    			else {
    				rest = (amountToSubstract+rest)-bar3Value;
    				bar3.setProgress(0);
    				
    			}
    		if(bar4.getId() != seekBar.getId())
    			if(bar4Value>=amountToSubstract+rest)
    				bar4.setProgress(bar4Value-amountToSubstract-rest);
    			else {
    				rest = (amountToSubstract+rest)-bar4Value;
    				bar4.setProgress(0);
    				
    			}
    		if(bar5.getId() != seekBar.getId())
    			if(bar5Value>=amountToSubstract+rest)
    				bar5.setProgress(bar1Value-amountToSubstract-rest);
    			else {
    				rest = (amountToSubstract+rest)-bar5Value;
    				bar5.setProgress(0);
    				
    			}
    	}
		
	}
}
