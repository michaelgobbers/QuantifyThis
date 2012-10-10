package be.mume.quantifythis;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;

public class HomeActivity extends FragmentActivity{
	
	@Override
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_home);
	}
	public void launchActivity(View view){
		Intent intent = new Intent();
		if(view.getId()==R.id.button_launch_mark){
			intent.setClass(this, MarkActivity.class);
		}
		else if(view.getId()==R.id.button_launch_agenda){
			intent.setClass(this, AgendaActivity.class);
		}
		else if(view.getId()==R.id.button_launch_statistics){
			intent.setClass(this, StatisticsActivity.class);
		}
		else if(view.getId()==R.id.button_launch_settings){
			intent.setClass(this, SettingsActivity.class);
		}
		if(intent!=null)
			startActivity(intent);
	}
}
