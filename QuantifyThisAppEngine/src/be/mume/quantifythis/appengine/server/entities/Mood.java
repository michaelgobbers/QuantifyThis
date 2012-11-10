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
	private String category;
	private String eventid;
	
	
	public Mood(){
		moodValues = new ArrayList<Integer>();
	}
	public Mood(List<Integer> moodValues, String category, String eventid){
		this.moodValues = new ArrayList<Integer>();
		setMoodValues(moodValues);
		setCategory(category);
		setEventid(eventid);
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getEventid() {
		return eventid;
	}
	public void setEventid(String eventid) {
		this.eventid = eventid;
	}
}
