package be.mume.quantifythis.appengine.server.entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.google.appengine.api.datastore.Key;

@Entity
public class Mood {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Key key;
	
	private List<Integer> moodValues;
	
	
	public Mood(){
		moodValues = new ArrayList<Integer>();
	}
	public Mood(List<Integer> moodValues){
		this.moodValues = new ArrayList<Integer>();
		setMoodValues(moodValues);
	}
	public Key getKey() {
		return key;
	}
	public List<Integer> getMoodValues(){
		return moodValues;
	}
	public void setMoodValues(List<Integer> moodValues){
		if(moodValues!=null)
			this.moodValues.addAll(moodValues);
	}
}
