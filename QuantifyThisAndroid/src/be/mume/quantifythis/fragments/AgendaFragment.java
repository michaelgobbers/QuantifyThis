package be.mume.quantifythis.fragments;

import be.mume.quantifythis.R;
import be.mume.quantifythis.adapters.AgendaAdapter;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

public class AgendaFragment extends Fragment{

	private ListView listView;
	public AgendaFragment(){
	}
	
	@Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		View view = inflater.inflate(R.layout.fragment_agenda, container);
    	listView = (ListView) view.findViewById(R.id.list_agenda);
    	listView.setAdapter(new AgendaAdapter());
        return view;
    }
}
