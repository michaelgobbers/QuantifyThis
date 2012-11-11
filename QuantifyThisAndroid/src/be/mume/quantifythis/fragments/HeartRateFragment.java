package be.mume.quantifythis.fragments;

import android.app.Activity;
import android.widget.TextView;
import be.mume.quantifythis.R;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import be.mume.quantifythis.model.MarkMoodModel;
import be.mume.quantifythis.helpers.shakeCounter.ShakeCounter;
import be.mume.quantifythis.helpers.shakeCounter.ShakeCounterListener;

import java.util.Date;

/**
 * Fragment displaying the users heart rate. still needs to be implemented.
 * @author michaelgobbers
 *
 */
public class HeartRateFragment extends Fragment implements ShakeCounterListener {
    private MarkMoodModel model;
    private ShakeCounter shakeCounter;
    private TextView bpmLabel;
    private long startTime;

    public HeartRateFragment(MarkMoodModel model) {
        this.model = model;
	}

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.shakeCounter = new ShakeCounter(getActivity());
        this.shakeCounter.registerListener(this);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
    	View view = inflater.inflate(R.layout.fragment_heart_rate, container, false);
        bpmLabel = (TextView) view.findViewById(R.id.bpm_label);
        return view;
    }

    @Override
    public void onResume() {
        super.onResume();
        this.shakeCounter.startListening();
    }

    @Override
    public void onPause() {
        super.onPause();
        this.shakeCounter.stopListening();
        this.shakeCounter.reset();
    }

    @Override
    public void onShake() {
        if(shakeCounter.getTotalCount() == 1){
            startTime = new Date().getTime();
        }else{
            int avg = (int) ((60000 * shakeCounter.getTotalCount()) / (new Date().getTime() - startTime));
            bpmLabel.setText(avg + "");
        }
    }
}
