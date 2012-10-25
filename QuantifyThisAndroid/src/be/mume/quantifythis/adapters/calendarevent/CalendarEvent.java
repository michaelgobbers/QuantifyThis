package be.mume.quantifythis.adapters.calendarevent;

import java.util.Date;

public class CalendarEvent {
	
	public String title;
	public String description;
	public Date start;
	public Date end;
	

	public CalendarEvent(String title, String desciption, Date start, Date end){
		this.title = title;
		this.description = desciption;
		this.start = start;
		this.end = end;
	}

}
