package be.mume.quantifythis.fragments;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import be.mume.quantifythis.R;
import be.mume.quantifythis.model.MoodModel;

/**
 * The Fragment cotaining 5 mood sliders that max up to a total of 100%
 *
 * @author michaelgobbers
 */
public class MarkMoodFragment extends Fragment implements OnSeekBarChangeListener {
    private MoodModel model;

    public MarkMoodFragment() {
    }

    public MarkMoodFragment(MoodModel model) {
        this.model = model;
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

}
