package be.mume.quantifythis.fragments;

import android.app.Activity;
import android.content.Context;
import android.os.Vibrator;
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
    private static final int AVG_TOLERANCE = 5;
    private static final int STABLE_AVG_COUNT = 5;
    private MarkMoodModel model;
    private ShakeCounter shakeCounter;
    private TextView bpmLabel;
    private long startTime;
    private long lastShake;
    private int lastAverage;
    private int stableCount = 0;

    public HeartRateFragment(){

    }

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
            lastShake = startTime;
        }else if(isValidShake()){
            lastShake = new Date().getTime();
            int avg = (int) ((60000 * shakeCounter.getTotalCount()) / (new Date().getTime() - startTime));
            bpmLabel.setText(avg + "");

            if(Math.abs(lastAverage - avg) < AVG_TOLERANCE)
                stableCount++;
            else
                stableCount = 0;

            if(isStable(avg)){
                Vibrator v = (Vibrator) getActivity().getSystemService(Context.VIBRATOR_SERVICE);
                v.vibrate(500);
                model.setHeartRate(avg);
                this.shakeCounter.stopListening();
            }
            lastAverage = avg;
        }else{
            this.shakeCounter.reset();
        }
    }

    // if time since last shake is less than 2 seconds
    private boolean isValidShake() {
        return new Date().getTime() - lastShake < 2000;
    }

    private boolean isStable(int avg) {
        return stableCount >= STABLE_AVG_COUNT;
    }
}
