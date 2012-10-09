package be.mume.quantifythis.fragments;

import java.util.ArrayList;
import java.util.List;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.app.FragmentStatePagerAdapter;

/**
 * A {@link QuantifyPagerAdapter} that returns a fragment corresponding to one of the primary
 * sections of the app.
 */
public class QuantifyPagerAdapter extends FragmentStatePagerAdapter {

	private Fragment[] fragments = new Fragment[2];
	private String[] fragmentTitles = new String[2];
	
    public QuantifyPagerAdapter(FragmentManager fm) {
        super(fm);
    }

    @Override
    public int getItemPosition(Object fragment){
    	return POSITION_NONE;
    }
    
    @Override
    public Fragment getItem(int i) {
        return fragments[i];
    }
    public void setFragment(Fragment fragment, String title, int index){
    	this.fragments[index] = fragment;
    	this.fragmentTitles[index] = title;
    }
    @Override
    public int getCount() {
        return 2;
    }

    @Override
    public CharSequence getPageTitle(int position) {
        return fragmentTitles[position];
    } 
}
