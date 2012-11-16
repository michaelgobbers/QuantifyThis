package be.mume.quantifythis.appengine.server.replies.xml;

import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

import be.mume.quantifythis.appengine.server.entities.Entry;

public class XmlDocumentGenerator {
	
	private DocumentBuilder docBuilder;
	
	public XmlDocumentGenerator() throws ParserConfigurationException {
		DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
		docBuilder = docFactory.newDocumentBuilder();
	}
	
	/**
	 * Format of Returned XML Document:
	 * heart, sleep, weather are optional.
	 * <response>
	 * 	<entry>
	 * 		<date> </date>
	 * 		<mood>
	 * 			<category>value</category>
	 * 			<eventid>value</eventid>
	 * 			<moodvalue>value</moodvalue>
	 * 			...
	 * 		</mood>
	 * 		<heart>
	 * 			<bpm>value</bpm>
	 * 		</heart>
	 * 		<sleep>
	 * 			<hours>value</hours>
	 * 			<eff>value</eff>
	 * 		</sleep>
	 * 		<weather>
	 * 			<temp>value</temp>
	 * 		</weather>
	 * 	</entry>
	 * ...
	 * </response>
	 * @param entry
	 * @return
	 */
	public Document EntryDocument(List<Entry> entryList){
		Document doc = docBuilder.newDocument();
		Element responseEl = doc.createElement("response");
		doc.appendChild(responseEl);
		for(Entry entry: entryList){
			//entry
			Element entryEl = doc.createElement("entry");
			responseEl.appendChild(entryEl);
			
			//date
			Element dateEl = doc.createElement("date");
			dateEl.appendChild(doc.createTextNode(Long.toString(entry.getDate().getTime())));
			entryEl.appendChild(dateEl);
			
			//moods
			if(entry.getMood()!=null){
				Element moodEl = doc.createElement("mood");
				List<Integer> moodValues = entry.getMood().getMoodValues();
				if(entry.getMood().getEventid()!=null&&entry.getMood().getCategory()!=null){
					Element catEl = doc.createElement("category");
					catEl.appendChild(doc.createTextNode(entry.getMood().getCategory()));
					moodEl.appendChild(catEl);
					
					Element eventidEl = doc.createElement("eventid");
					eventidEl.appendChild(doc.createTextNode(entry.getMood().getEventid()));
					moodEl.appendChild(eventidEl);
				}
				for(Integer moodValue:moodValues){
					Element moodValEl = doc.createElement("moodvalue");
					moodValEl.appendChild(doc.createTextNode(Integer.toString(moodValue)));
					moodEl.appendChild(moodValEl);
				}
				entryEl.appendChild(moodEl);
			}
			
			//heart
			if(entry.getHeartRate()!=null && entry.getHeartRate().getBpm()!=null){
				Element heartEl = doc.createElement("heart");
				Element bpmEl = doc.createElement("bpm");
				bpmEl.appendChild(doc.createTextNode(Integer.toString(entry.getHeartRate().getBpm())));
				heartEl.appendChild(bpmEl);
				entryEl.appendChild(heartEl);
			}
			
			//sleep
			if(entry.getSleep()!=null&&entry.getSleep().getHoursSlept()!=null&&entry.getSleep().getSleepEfficiency()!=null){
				Element sleepEl = doc.createElement("sleep");
				Element hoursEl = doc.createElement("hours");
				hoursEl.appendChild(doc.createTextNode(Integer.toString(entry.getSleep().getHoursSlept())));
				sleepEl.appendChild(hoursEl);
				Element effEl = doc.createElement("eff");
				effEl.appendChild(doc.createTextNode(Integer.toString(entry.getSleep().getSleepEfficiency())));
				sleepEl.appendChild(effEl);
				entryEl.appendChild(sleepEl);
			}
			
			//weather
			if(entry.getWeather()!=null && entry.getWeather().getTemperature()!=null){
				Element weatherEl = doc.createElement("weather");
				Element rainEl = doc.createElement("temp");
				rainEl.appendChild(doc.createTextNode(Integer.toString(entry.getWeather().getTemperature())));
				weatherEl.appendChild(rainEl);
				entryEl.appendChild(weatherEl);
			}
			
			
		}
		
		return doc;
	}

}
