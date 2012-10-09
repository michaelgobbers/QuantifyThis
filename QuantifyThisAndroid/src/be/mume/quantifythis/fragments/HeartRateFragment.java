package be.mume.quantifythis.fragments;

import be.mume.quantifythis.R;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class HeartRateFragment extends Fragment {
	public HeartRateFragment() {
	}
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
    	View view = inflater.inflate(R.layout.fragment_heart_rate, container, false);
        
        return view;
    }
}
