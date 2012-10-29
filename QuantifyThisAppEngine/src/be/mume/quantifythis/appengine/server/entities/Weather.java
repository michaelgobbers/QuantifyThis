package be.mume.quantifythis.appengine.server.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.google.appengine.api.datastore.Key;


@Entity
public class Weather {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Key key;
	
	private Integer rainPercentage;
	private Integer amountOfSun;
	
	public Weather(){
	}
	public Weather(Integer rain, Integer sun){
		setRainPercentage(rain);
		setAmountOfSun(sun);
	}
	public Integer getRainPercentage() {
		return rainPercentage;
	}
	public void setRainPercentage(Integer rainPercentage) {
		this.rainPercentage = rainPercentage;
	}
	public Integer getAmountOfSun() {
		return amountOfSun;
	}
	public void setAmountOfSun(Integer amountOfSun) {
		this.amountOfSun = amountOfSun;
	}
	
	
}
