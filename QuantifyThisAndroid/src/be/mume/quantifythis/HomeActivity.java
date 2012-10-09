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
		if(view.getId()==R.id.button_launch_mark){
			Intent intent = new Intent();
			intent.setClass(this, MarkActivity.class);
			startActivity(intent);
		}
	}
}
