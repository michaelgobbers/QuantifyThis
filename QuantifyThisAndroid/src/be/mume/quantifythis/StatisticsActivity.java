package be.mume.quantifythis;

import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.MenuItem;
import be.mume.quantifythis.helpers.RetrieveMoodListener;
import be.mume.quantifythis.helpers.RetrieveMoodsAsync;
import be.mume.quantifythis.model.MoodModel;

import java.util.List;

/**
 * Simple Statistics Activity still needs to be implemented.
 * @author michaelgobbers
 *
 */
public class StatisticsActivity extends FragmentActivity implements RetrieveMoodListener{

	@Override
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_statistics);
        final ActionBar actionBar = getActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setDisplayShowTitleEnabled(false);

        RetrieveMoodsAsync retrieveMoodsAsync = new RetrieveMoodsAsync();
        retrieveMoodsAsync.setListener(this);
        retrieveMoodsAsync.execute(
            this.getString(R.string.appengine_base_url) +
            this.getString(R.string.appengine_data_prefix)
        );

	}

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                // app icon in action bar clicked; go home
                Intent intent = new Intent(this, HomeActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                startActivity(intent);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    @Override
    public void handleMood(List<MoodModel> moodList) {
        //TODO use moodlist to make pretty statistics
    }
}
