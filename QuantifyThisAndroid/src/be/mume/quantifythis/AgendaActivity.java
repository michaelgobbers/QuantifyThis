package be.mume.quantifythis;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

/**
 * Activity for the detailed agenda View. This uses the AgendaFragment.
 * @author michaelgobbers
 *
 */
public class AgendaActivity extends FragmentActivity {

	@Override
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_agenda);
	}
}
