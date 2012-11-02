package be.mume.quantifythis;


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

    @Override
    public void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        int orientation = getResources().getConfiguration().orientation;
        setContentView(R.layout.activity_mark);

        model = new MarkMoodModel();
        //use tabs in portrait mode
        if(orientation == Configuration.ORIENTATION_PORTRAIT){
	        
	        // Create the adapter that will return a fragment for each of the three primary sections
	        // of the app.
	        pagerAdapter = new QuantifyPagerAdapter(getSupportFragmentManager());
	        pagerAdapter.addFragment(new MarkMoodFragment(model), getResources().getString(R.string.tab_title_mark_mood));
	        pagerAdapter.addFragment(new HeartRateFragment(model), getResources().getString(R.string.tab_title_heart));
	        pagerAdapter.addFragment(new SleepFragment(model), getResources().getString(R.string.tab_title_sleep));

	        // Set up the action bar.
	        final ActionBar actionBar = getActionBar();
	        actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_TABS);
	
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
        }else{
        	Fragment markFragment = getSupportFragmentManager().findFragmentById(R.id.fragment_mark);
        	Fragment heartFragment = getSupportFragmentManager().findFragmentById(R.id.fragment_heart);
        	Fragment sleepFragment = getSupportFragmentManager().findFragmentById(R.id.fragment_sleep);
        	Display display = getWindowManager().getDefaultDisplay();
        	
        	int width = display.getWidth();
        	int height = display.getHeight();
        	markFragment.getView().getLayoutParams().width = width/3;
        	heartFragment.getView().getLayoutParams().width = width/3;
        	sleepFragment.getView().getLayoutParams().width = width/3;
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
