package be.mume.quantifythis.appengine.server.entities;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import com.google.appengine.api.datastore.Key;
@Entity
public class Entry {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Key key;
	private String userEmail;
	private Date date;
	@OneToOne(cascade=CascadeType.ALL)
	private Mood mood;
	@OneToOne(cascade=CascadeType.ALL)
	private HeartRate heartRate;
	@OneToOne(cascade=CascadeType.ALL)
	private Weather weather;
	@OneToOne(cascade=CascadeType.ALL)
	private Sleep sleep;
	
	public Entry(){
	}
	public Entry(String userEmail,Date date, Mood mood, HeartRate heart, Weather weather, Sleep sleep){
		setUserEmail(userEmail);
		setDate(date);
		setMood(mood);
		setHeartRate(heart);
		setWeather(weather);
		setSleep(sleep);
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Mood getMood() {
		return mood;
	}
	public void setMood(Mood mood) {
		this.mood = mood;
	}
	public HeartRate getHeartRate() {
		return heartRate;
	}
	public void setHeartRate(HeartRate heartRate) {
		this.heartRate = heartRate;
	}
	public Weather getWeather() {
		return weather;
	}
	public void setWeather(Weather weather) {
		this.weather = weather;
	}
	public Sleep getSleep() {
		return sleep;
	}
	public void setSleep(Sleep sleep) {
		this.sleep = sleep;
	}
}
