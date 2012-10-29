package be.mume.quantifythis.appengine.server.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.google.appengine.api.datastore.Key;

@Entity
public class Sleep {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Key key;

	private Integer hoursSlept;
	private Integer sleepEfficiency;
	
	public Sleep(){
	}
	public Sleep(Integer hoursSlept, Integer sleepEff){
		setHoursSlept(hoursSlept);
		setSleepEfficiency(sleepEff);
	}
	public Integer getHoursSlept() {
		return hoursSlept;
	}
	public void setHoursSlept(Integer hoursSlept) {
		this.hoursSlept = hoursSlept;
	}
	public Integer getSleepEfficiency() {
		return sleepEfficiency;
	}
	public void setSleepEfficiency(Integer sleepEfficiency) {
		this.sleepEfficiency = sleepEfficiency;
	}
}
