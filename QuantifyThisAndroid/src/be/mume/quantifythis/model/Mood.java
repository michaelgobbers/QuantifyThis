package be.mume.quantifythis.model;

import java.util.Date;

/**
 * class representing the mood and extra attributes, different from moodModel that this one is not representing the current but a certain
 * 
 * @author Sander
 */
public class Mood {
	private int cat1;
	private int cat2;
	private int cat3;
	private int cat4;
	private int cat5;
	private int amountOfSleep;
	private int sleepQuality;
	private int heartRate;
	private int temperature;
	private String category;
	private String eventId;
	private long date;

	public Mood() {
		cat1 = 0;
		cat2 = 0;
		cat3 = 0;
		cat4 = 0;
		cat5 = 0;
		amountOfSleep = Integer.MAX_VALUE;
		sleepQuality = Integer.MAX_VALUE;
		heartRate = Integer.MAX_VALUE;
		temperature = Integer.MAX_VALUE;
		String category = "";
		String eventId = "";
		Date theDate = new Date();
		long date = theDate.getTime();

	}
	
	public Mood(String[] moods, int AmoutOfSleep, int sleepQuality, int heartrate, int temperature, String category, String eventId, long date)
	{
		setCat1(Integer.parseInt(moods[0]));
		setCat2(Integer.parseInt(moods[1]));
		setCat3(Integer.parseInt(moods[2]));
		setCat4(Integer.parseInt(moods[3]));
		setCat5(Integer.parseInt(moods[4]));
		setAmountOfSleep(AmoutOfSleep);
		setSleepQuality(sleepQuality);
		setHeartRate(heartrate);
		setCategory(category);
		setEventId(eventId);
		setDate(date);
	}

	public String getCategory() {
		return category;
	}
	
	public long getDate() {
		return date;
	}
	
	public void setEventId(String eventId) {
		this.eventId = eventId;
	}
	
	public void setDate(long date) {
		this.date = date;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getEventId() {
		return eventId;
	}
	
	public int getCat1() {
		return cat1;
	}

	public void setCat1(int cat1) {
		this.cat1 = cat1;
	}

	public int getCat2() {
		return cat2;
	}

	public void setCat2(int cat2) {
		this.cat2 = cat2;
	}

	public int getCat3() {
		return cat3;
	}

	public void setCat3(int cat3) {
		this.cat3 = cat3;
	}

	public int getCat4() {
		return cat4;
	}

	public void setCat4(int cat4) {
		this.cat4 = cat4;
	}

	public int getCat5() {
		return cat5;
	}

	public void setCat5(int cat5) {
		this.cat5 = cat5;
	}
	
	public int getTotalMood()
	{
		return 500-(getCat1()+getCat2()+getCat3()+getCat4()+getCat5()); //Om zo een mooi percentage te krijgen, door de 500-x krijg je dat iemand positief ook een hoge score heeft.
	}

	public int getAmountOfSleep() {
		return amountOfSleep;
	}

	public void setAmountOfSleep(int amountOfSleep) {
		this.amountOfSleep = amountOfSleep;
	}

	public int getSleepQuality() {
		return sleepQuality;
	}

	public void setSleepQuality(int sleepQuality) {
		this.sleepQuality = sleepQuality;
	}

	public int getHeartRate() {
		return heartRate;
	}

	public void setHeartRate(int heartRate) {
		this.heartRate = heartRate;
	}

	public int getTemperature() {
		return temperature;
	}

	public void setTemperature(int temperature) {
		this.temperature = temperature;
	}
}
