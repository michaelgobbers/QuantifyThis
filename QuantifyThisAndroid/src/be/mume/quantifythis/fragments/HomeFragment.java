package be.mume.quantifythis.fragments;

import be.mume.quantifythis.R;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/**
 * The fragment containing the 4 buttons on the home screen. Is used in combination with the HintsFragment.
 * @author michaelgobbers
 *
 */
public class HomeFragment extends Fragment {

	public HomeFragment(){
	}
	@Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
    	View view = inflater.inflate(R.layout.fragment_home, container, false);
        
        return view;
    }
}
