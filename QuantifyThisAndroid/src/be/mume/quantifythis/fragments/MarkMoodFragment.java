package be.mume.quantifythis.fragments;

import android.app.Activity;
import android.location.Location;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import be.mume.quantifythis.R;
import be.mume.quantifythis.helpers.EnterMoodAsync;
import be.mume.quantifythis.helpers.Tuple;
import be.mume.quantifythis.model.LocationModel;
import be.mume.quantifythis.model.MarkMoodModel;

/**
 * The Fragment cotaining 5 mood sliders that max up to a total of 100%
 *
 * @author michaelgobbers
 */
public class MarkMoodFragment extends Fragment implements OnSeekBarChangeListener, View.OnClickListener {
    private MarkMoodModel model;
    private LocationModel locationModel;

    public MarkMoodFragment() {
    }

    public MarkMoodFragment(MarkMoodModel model) {
        this.model = model;
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.locationModel = new LocationModel(activity);
    }

    /**
     * inflates the layout for this fragment and registers this class as the listener for every change that happens to a seekbar.
     */
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_mark_mood, container, false);
        SeekBar bar1 = (SeekBar) view.findViewById(R.id.seekBar1);
        SeekBar bar2 = (SeekBar) view.findViewById(R.id.seekBar2);
        SeekBar bar3 = (SeekBar) view.findViewById(R.id.seekBar3);
        SeekBar bar4 = (SeekBar) view.findViewById(R.id.seekBar4);
        SeekBar bar5 = (SeekBar) view.findViewById(R.id.seekBar5);
        Button button = (Button) view.findViewById(R.id.button_mark_mood);

        bar1.setOnSeekBarChangeListener(this);
        bar2.setOnSeekBarChangeListener(this);
        bar3.setOnSeekBarChangeListener(this);
        bar4.setOnSeekBarChangeListener(this);
        bar5.setOnSeekBarChangeListener(this);
        button.setOnClickListener(this);

        return view;
    }

    @Override
    public void onProgressChanged(SeekBar seekBar, int progress,
                                  boolean fromUser) {
    }

    @Override
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override
    public void onStopTrackingTouch(SeekBar seekBar) {
        View seekBarParent = (View) seekBar.getParent().getParent();
        SeekBar bar1 = (SeekBar) seekBarParent.findViewById(R.id.seekBar1);
        SeekBar bar2 = (SeekBar) seekBarParent.findViewById(R.id.seekBar2);
        SeekBar bar3 = (SeekBar) seekBarParent.findViewById(R.id.seekBar3);
        SeekBar bar4 = (SeekBar) seekBarParent.findViewById(R.id.seekBar4);
        SeekBar bar5 = (SeekBar) seekBarParent.findViewById(R.id.seekBar5);
        model.setCat1(bar1.getProgress());
        model.setCat2(bar2.getProgress());
        model.setCat3(bar3.getProgress());
        model.setCat4(bar4.getProgress());
        model.setCat5(bar5.getProgress());
    }

    @Override
    @SuppressWarnings("unchecked")
    public void onClick(View view) {
        Tuple<MarkMoodModel, Location> tuple = new Tuple<MarkMoodModel, Location>(model, locationModel.getLastLocation());
        new EnterMoodAsync(this.getActivity()).execute(tuple);
    }
}
