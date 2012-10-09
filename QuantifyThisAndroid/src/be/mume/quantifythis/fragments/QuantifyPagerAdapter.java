package be.mume.quantifythis.fragments;

import java.util.ArrayList;
import java.util.List;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

/**
 * A {@link QuantifyPagerAdapter} that returns a fragment corresponding to one of the primary
 * sections of the app.
 */
public class QuantifyPagerAdapter extends FragmentPagerAdapter {

	private List<Fragment> fragments;
	private List<String> fragmentTitle;
	
    public QuantifyPagerAdapter(FragmentManager fm) {
        super(fm);
        fragments = new ArrayList<Fragment>();
        fragmentTitle = new ArrayList<String>();
    }

    @Override
    public Fragment getItem(int i) {
        return fragments.get(i);
    }
    public void addFragment(Fragment fragment, String title){
    	this.fragments.add(fragment);
    	this.fragmentTitle.add(title);
    }
    @Override
    public int getCount() {
        return fragments.size();
    }

    @Override
    public CharSequence getPageTitle(int position) {
        return fragmentTitle.get(position);
    }
}
