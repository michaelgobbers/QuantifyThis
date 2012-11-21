package be.mume.quantifythis;


import android.content.Intent;
import android.location.Location;
import android.view.MenuItem;
import android.view.View;
import be.mume.quantifythis.fragments.HeartRateFragment;
import be.mume.quantifythis.fragments.MarkMoodFragment;
import be.mume.quantifythis.fragments.QuantifyPagerAdapter;
import be.mume.quantifythis.fragments.SleepFragment;

import android.app.ActionBar;
import android.app.FragmentTransaction;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.Display;
import android.view.Menu;
import be.mume.quantifythis.helpers.EnterMoodAsync;
import be.mume.quantifythis.helpers.Tuple;
import be.mume.quantifythis.model.LocationModel;
import be.mume.quantifythis.model.MarkMoodModel;

/**
 * This activity contains 3 fragments, the MarkMoodFragment, the HeartRateFragment and the Sleep Fragment. This is implemented using tabs in portrait and without tabs in landscape.
 * @author michaelgobbers
 *
 */
public class MarkActivity extends FragmentActivity implements ActionBar.TabListener {

    /**
     * The {@link android.support.v4.view.PagerAdapter} that will provide fragments for each of the
     * sections. We use a {@link android.support.v4.app.FragmentPagerAdapter} derivative, which will
     * keep every loaded fragment in memory. If this becomes too memory intensive, it may be best
     * to switch to a {@link android.support.v4.app.FragmentStatePagerAdapter}.
     */
    QuantifyPagerAdapter pagerAdapter;

    /**
     * The {@link ViewPager} that will host the section contents.
     */
    ViewPager mViewPager;

    private MarkMoodModel model;
    private LocationModel locationModel;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.locationModel = new LocationModel(this);
        setContentView(R.layout.activity_mark);

        model = new MarkMoodModel();
        // Create the adapter that will return a fragment for each of the three primary sections
        // of the app.
        pagerAdapter = new QuantifyPagerAdapter(getSupportFragmentManager());
        pagerAdapter.addFragment(new MarkMoodFragment(model), getResources().getString(R.string.tab_title_mark_mood));
        pagerAdapter.addFragment(new HeartRateFragment(model), getResources().getString(R.string.tab_title_heart));
        pagerAdapter.addFragment(new SleepFragment(model), getResources().getString(R.string.tab_title_sleep));

        // Set up the action bar.
        final ActionBar actionBar = getActionBar();
        actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_TABS);
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setDisplayShowTitleEnabled(false);

        // Set up the ViewPager with the sections adapter.
        mViewPager = (ViewPager) findViewById(R.id.pager);
        mViewPager.setAdapter(pagerAdapter);


        // When swiping between different sections, select the corresponding tab.
        // We can also use ActionBar.Tab#select() to do this if we have a reference to the
        // Tab.
        mViewPager.setOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() {
            @Override
            public void onPageSelected(int position) {
                actionBar.setSelectedNavigationItem(position);
            }
        });

        // For each of the sections in the app, add a tab to the action bar.
        for (int i = 0; i < pagerAdapter.getCount(); i++) {
            // Create a tab with text corresponding to the page title defined by the adapter.
            // Also specify this Activity object, which implements the TabListener interface, as the
            // listener for when this tab is selected.
            actionBar.addTab(
                    actionBar.newTab()
                            .setText(pagerAdapter.getPageTitle(i))
                            .setTabListener(this));
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                // app icon in action bar clicked; go home
                Intent intent = new Intent(this, HomeActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                startActivity(intent);
                return true;
            case R.id.menu_save:
                Tuple<MarkMoodModel, Location> tuple = new Tuple<MarkMoodModel, Location>(model, locationModel.getLastLocation());
                new EnterMoodAsync(this).execute(tuple);
                intent = new Intent(this, HomeActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                startActivity(intent);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }    

    @Override
    public void onTabUnselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
    }

    @Override
    public void onTabSelected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
        // When the given tab is selected, switch to the corresponding page in the ViewPager.
        mViewPager.setCurrentItem(tab.getPosition());
    }

    @Override
    public void onTabReselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
    }
}
