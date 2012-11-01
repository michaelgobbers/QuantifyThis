package be.mume.quantifythis.fragments;

import android.location.Location;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import be.mume.quantifythis.R;
import be.mume.quantifythis.model.LocationModel;
import be.mume.quantifythis.model.MarkMoodModel;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;

/**
 * The Fragment cotaining 5 mood sliders that max up to a total of 100%
 *
 * @author michaelgobbers
 */
public class MarkMoodFragment extends Fragment implements OnSeekBarChangeListener, View.OnClickListener {
    private MarkMoodModel model;
    private LocationModel locationModel;

    public MarkMoodFragment() {
        locationModel = new LocationModel(getActivity());
    }

    public MarkMoodFragment(MarkMoodModel model) {
        this();
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
        Button button = (Button) view.findViewById(R.id.button_mark_mood);

        bar1.setOnSeekBarChangeListener(this);
        bar2.setOnSeekBarChangeListener(this);
        bar3.setOnSeekBarChangeListener(this);
        bar4.setOnSeekBarChangeListener(this);
        bar5.setOnSeekBarChangeListener(this);
        button.setOnClickListener(this);

        return view;
    }

    /**
     * When the pprogress is changed the corresponding label that displays the seek bars percentage is adjusted.
     * Before this is done the checkAndAdjustMoodTotal() method is called to check that the total amount does not exceed 100%, if so the other bars are adjusted to represent 100%.
     * This algorithm still needs some work but works roughly at the moment.
     */
    @Override
    public void onProgressChanged(SeekBar seekBar, int progress,
                                  boolean fromUser) {
        checkAndAdjustMoodTotal(seekBar);
        TextView label = null;
        View view = (View) seekBar.getParent().getParent();
        if (seekBar.getId() == R.id.seekBar1) {
            label = (TextView) view.findViewById(R.id.seekbar1_label);
        } else if (seekBar.getId() == R.id.seekBar2) {
            label = (TextView) view.findViewById(R.id.seekbar2_label);
        } else if (seekBar.getId() == R.id.seekBar3) {
            label = (TextView) view.findViewById(R.id.seekbar3_label);
        } else if (seekBar.getId() == R.id.seekBar4) {
            label = (TextView) view.findViewById(R.id.seekbar4_label);
        } else if (seekBar.getId() == R.id.seekBar5) {
            label = (TextView) view.findViewById(R.id.seekbar5_label);
        }
        if (label != null) label.setText(progress + "%");
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

    /**
     * This method checks and adjusts the seek bars when the total exceeds 100%
     * This algorithm still contains a few bugs. but works roughly.
     */
    private void checkAndAdjustMoodTotal(SeekBar seekBar) {
        View seekBarParent = (View) seekBar.getParent().getParent();
        SeekBar bar1 = (SeekBar) seekBarParent.findViewById(R.id.seekBar1);
        SeekBar bar2 = (SeekBar) seekBarParent.findViewById(R.id.seekBar2);
        SeekBar bar3 = (SeekBar) seekBarParent.findViewById(R.id.seekBar3);
        SeekBar bar4 = (SeekBar) seekBarParent.findViewById(R.id.seekBar4);
        SeekBar bar5 = (SeekBar) seekBarParent.findViewById(R.id.seekBar5);
        int bar1Value = bar1.getProgress();
        int bar2Value = bar2.getProgress();
        int bar3Value = bar3.getProgress();
        int bar4Value = bar4.getProgress();
        int bar5Value = bar5.getProgress();
        int totalValue = bar1Value + bar2Value + bar3Value + bar4Value + bar5Value;
        if (bar1Value + bar2Value + bar3Value + bar4Value + bar5Value > 100) {
            int amountToSubstract = (totalValue - 100) / 4;
            int rest = (totalValue - 100) % 4;

            if (bar1.getId() != seekBar.getId())
                if (bar1Value >= amountToSubstract + rest)
                    bar1.setProgress(bar1Value - amountToSubstract - rest);
                else {
                    rest = (amountToSubstract + rest) - bar1Value;
                    bar1.setProgress(0);

                }
            if (bar2.getId() != seekBar.getId())
                if (bar2Value >= amountToSubstract + rest)
                    bar2.setProgress(bar2Value - amountToSubstract - rest);
                else {
                    rest = (amountToSubstract + rest) - bar2Value;
                    bar2.setProgress(0);

                }
            if (bar3.getId() != seekBar.getId())
                if (bar3Value >= amountToSubstract + rest)
                    bar3.setProgress(bar3Value - amountToSubstract - rest);
                else {
                    rest = (amountToSubstract + rest) - bar3Value;
                    bar3.setProgress(0);

                }
            if (bar4.getId() != seekBar.getId())
                if (bar4Value >= amountToSubstract + rest)
                    bar4.setProgress(bar4Value - amountToSubstract - rest);
                else {
                    rest = (amountToSubstract + rest) - bar4Value;
                    bar4.setProgress(0);

                }
            if (bar5.getId() != seekBar.getId())
                if (bar5Value >= amountToSubstract + rest)
                    bar5.setProgress(bar1Value - amountToSubstract - rest);
                else {
                    rest = (amountToSubstract + rest) - bar5Value;
                    bar5.setProgress(0);

                }
        }

    }

    @Override
    public void onClick(View view) {
        //get weather
        //persist to appengine

    }

    private void weatherInfo() {
        HttpClient httpClient = new DefaultHttpClient();
        HttpContext httpContext = new BasicHttpContext();
        Location location = locationModel.getLastLocation();
        locationModel.stopTracking();
        HttpGet httpGet = new HttpGet("http://where.yahooapis.com/geocode?location=" +
                location.getLatitude() + ',' + location.getLongitude() + "&flags=J&gflags=R&appid=" /*+ /*APPID*/);
        String text;
        try {
            HttpResponse response = httpClient.execute(httpGet, httpContext);
            HttpEntity entity = response.getEntity();
            String retSrc = EntityUtils.toString(entity);

            JSONObject result = new JSONObject(retSrc);
            /*JSONArray resultSet = result.getJSONArray("ResultSet");
            JSONArray results = resultSet.getJSONArray("Results");*/

        } catch (IOException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
    }
}
