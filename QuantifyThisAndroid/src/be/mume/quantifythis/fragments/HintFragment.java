package be.mume.quantifythis.fragments;



import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import be.mume.quantifythis.R;
import be.mume.quantifythis.adapters.HintAdapter;

/**
 * Fragment containing a list with data that still needs to be created. Still needs to be implemented.
 * @author michaelgobbers
 *
 */
public class HintFragment extends Fragment{
	private ListView listView;
	public HintFragment(){
	}
	@Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		View view = inflater.inflate(R.layout.fragment_hint, container);
    	listView = (ListView) view.findViewById(R.id.list_hint);
    	listView.setAdapter(new HintAdapter());
        return view;
    }
}
