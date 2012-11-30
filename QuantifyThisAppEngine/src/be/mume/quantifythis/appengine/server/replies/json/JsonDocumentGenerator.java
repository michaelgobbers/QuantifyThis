package be.mume.quantifythis.appengine.server.replies.json;

import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.w3c.dom.Document;


import be.mume.quantifythis.appengine.server.entities.Entry;

public class JsonDocumentGenerator {

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String EntryDocument(List<Entry> entryList) {

		List jsonEntryList = new LinkedList();
		JSONObject jsonEntriesObject = new JSONObject();
		jsonEntriesObject.put("entries", jsonEntryList);
		
		for(Entry entry:entryList){
			JSONObject jsonEntryObject = new JSONObject();
			jsonEntryList.add(jsonEntryObject);
			
			long date = entry.getDate().getTime();
			jsonEntryObject.put("date", date);
			//create mood object
			JSONObject moodMap = new JSONObject();
			jsonEntryObject.put("mood", moodMap);
			moodMap.put("category", entry.getMood().getCategory());
			moodMap.put("eventid", entry.getMood().getEventid());
			moodMap.put("moodvalue", entry.getMood().getMoodValues());
			//add heart entry
			jsonEntryObject.put("heart", entry.getHeartRate().getBpm());
			//add sleep object
			JSONObject sleepMap = new JSONObject();
			jsonEntryObject.put("sleep", sleepMap);
			sleepMap.put("hours", entry.getSleep().getHoursSlept());
			sleepMap.put("eff", entry.getSleep().getSleepEfficiency());
			//add weather object
			JSONObject weatherMap = new JSONObject();
			jsonEntryObject.put("weather", weatherMap);
			weatherMap.put("temp", entry.getWeather().getTemperature());
		}
		
		
		
		return jsonEntriesObject.toString();
	}
	public String loggedInDocument(boolean loggedin){
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("loggedin", loggedin);
		return jsonObject.toString();
	}
}
