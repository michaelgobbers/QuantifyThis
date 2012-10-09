package be.mume.quantifythis.fragments;

import java.util.ArrayList;
import java.util.List;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.widget.FrameLayout;

/**
 * A {@link QuantifyPagerAdapter} that returns a fragment corresponding to one of the primary
 * sections of the app.
 */
public class QuantifyPagerAdapter extends FragmentPagerAdapter {

	private List<Fragment> fragments;
	private List<String> fragmentTitles;
	
    public QuantifyPagerAdapter(FragmentManager fm) {
        super(fm);
        fragments = new ArrayList<Fragment>();
        fragmentTitles = new ArrayList<String>();
    }
    
    @Override
    public Fragment getItem(int i) {
        return fragments.get(i);
    }
    public void addFragment(Fragment fragment, String title){
    	this.fragments.add(fragment);
    	this.fragmentTitles.add(title);
    }
    @Override
    public int getCount() {
        return fragments.size();
    }

    @Override
    public CharSequence getPageTitle(int position) {
        return fragmentTitles.get(position);
    } 
}
