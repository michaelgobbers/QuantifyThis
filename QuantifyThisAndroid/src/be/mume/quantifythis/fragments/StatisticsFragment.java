package be.mume.quantifythis.fragments;

import be.mume.quantifythis.R;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


/**
 * This is the StatisticsFragment that still needs to be implemented.
 * @author michaelgobbers
 *
 */
public class StatisticsFragment extends Fragment {
	public StatisticsFragment() {
	}
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
    	View view = inflater.inflate(R.layout.fragment_statistics, container, false);
        
        return view;
    }
}
