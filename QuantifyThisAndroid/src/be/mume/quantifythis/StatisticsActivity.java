package be.mume.quantifythis;

import android.app.ActionBar;
import android.content.Intent;
import android.graphics.Color;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.MenuItem;

import be.mume.quantifythis.helpers.RetrieveMoodListener;
import be.mume.quantifythis.helpers.RetrieveMoodsAsync;
import be.mume.quantifythis.model.Mood;
import be.mume.quantifythis.model.MultitouchPlot;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

import com.androidplot.series.XYSeries;
import com.androidplot.xy.BoundaryMode;
import com.androidplot.xy.LineAndPointFormatter;
import com.androidplot.xy.SimpleXYSeries;

/**
 * Simple Statistics Activity still needs to be implemented.
 * 
 * @author michaelgobbers
 * 
 */
public class StatisticsActivity extends FragmentActivity implements
		RetrieveMoodListener {

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_statistics);
		final ActionBar actionBar = getActionBar();
		actionBar.setDisplayHomeAsUpEnabled(true);
		actionBar.setDisplayShowTitleEnabled(false);

		RetrieveMoodsAsync retrieveMoodsAsync = new RetrieveMoodsAsync();
		retrieveMoodsAsync.setListener(this);
		retrieveMoodsAsync.execute(this.getString(R.string.appengine_base_url)
				+ this.getString(R.string.appengine_data_prefix));

	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case android.R.id.home:
			// app icon in action bar clicked; go home
			Intent intent = new Intent(this, HomeActivity.class);
			intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP
					| Intent.FLAG_ACTIVITY_CLEAR_TASK);
			startActivity(intent);
			return true;
		default:
			return super.onOptionsItemSelected(item);
		}
	}

	@Override
	public void handleMood(List<Mood> moodList) {
		MultitouchPlot multitouchPlot = (MultitouchPlot) findViewById(R.id.multitouchPlot);

		// Create two arrays of y-values to plot:
		List<Number> moodTotalList = new ArrayList<Number>();
		for (Mood mood : moodList) {
			System.out.println(mood.getTotalMood());
			moodTotalList.add((Number) mood.getTotalMood());
		}

		Number[] weatherBackup = new Number[] { 0,5,8,13,18,18,19,19,19,20 };
		Arrays.sort(weatherBackup);

		List<Number> weatherTotalList = new ArrayList<Number>();
		int i = 0;
		for (Mood mood : moodList) {
			i++;
			int number = mood.getTemperature();
			if (number != 0) {
				weatherTotalList.add((Number) number);
			} else {
				weatherTotalList.add(weatherBackup[i]);
			}
		}

		// Turn the above arrays into XYSeries:
		XYSeries series1 = new SimpleXYSeries(weatherTotalList,moodTotalList, // mood tov weather
				"Mood versus Weather"); // Set the display title of the series

		// Same as above, for series2
		XYSeries series2 = new SimpleXYSeries(weatherTotalList,
				SimpleXYSeries.ArrayFormat.Y_VALS_ONLY, "Series2");

		// Create a formatter to use for drawing a series using
		// LineAndPointRenderer:
		LineAndPointFormatter series1Format = new LineAndPointFormatter(
				Color.rgb(0, 200, 0), // line color
				Color.rgb(0, 100, 0), // point color
			 Color.rgb(150, 190, 150)); // fill color (optional)

		// Add series1 to the xyplot:
		multitouchPlot.addSeries(series1, series1Format);
		// Same as above, with series2:
		// multitouchPlot.addSeries(series2, new
		// LineAndPointFormatter(Color.rgb(0, 0, 200), Color.rgb(0, 0, 100),
		// Color.rgb(150, 150, 190)));

		// Reduce the number of range labels
		multitouchPlot.setTicksPerRangeLabel(3);

		// By default, AndroidPlot displays developer guides to aid in laying
		// out your plot.
		// To get rid of them call disableAllMarkup():
		multitouchPlot.disableAllMarkup();

		multitouchPlot.setRangeBoundaries(0, 500, BoundaryMode.FIXED);
		multitouchPlot.setDomainBoundaries(0, 5, BoundaryMode.FIXED);
		multitouchPlot.setDomainLabel("Weather");
		multitouchPlot.setRangeLabel("Mood");

	}
}
