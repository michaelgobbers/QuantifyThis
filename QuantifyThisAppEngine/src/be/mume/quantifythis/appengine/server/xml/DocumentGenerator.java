package be.mume.quantifythis.appengine.server.xml;

import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

import be.mume.quantifythis.appengine.server.entities.Entry;

public class DocumentGenerator {
	
	private DocumentBuilder docBuilder;
	
	public DocumentGenerator() throws ParserConfigurationException {
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
	 * 			<rain>value</rain>
	 * 			<sun>value</sun>
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
			Element moodEl = doc.createElement("mood");
			List<Integer> moodValues = entry.getMood().getMoodValues();
			for(Integer moodValue:moodValues){
				Element moodValEl = doc.createElement("moodvalue");
				moodValEl.appendChild(doc.createTextNode(Integer.toString(moodValue)));
				moodEl.appendChild(moodValEl);
			}
			entryEl.appendChild(moodEl);
			
			//heart
			Element heartEl = doc.createElement("heart");
			Element bpmEl = doc.createElement("bpm");
			bpmEl.appendChild(doc.createTextNode(Integer.toString(entry.getHeartRate().getBpm())));
			heartEl.appendChild(bpmEl);
			entryEl.appendChild(heartEl);
			
			//sleep
			Element sleepEl = doc.createElement("sleep");
			Element hoursEl = doc.createElement("hours");
			hoursEl.appendChild(doc.createTextNode(Integer.toString(entry.getSleep().getHoursSlept())));
			sleepEl.appendChild(hoursEl);
			Element effEl = doc.createElement("eff");
			effEl.appendChild(doc.createTextNode(Integer.toString(entry.getSleep().getSleepEfficiency())));
			sleepEl.appendChild(effEl);
			entryEl.appendChild(sleepEl);
			
			//weather
			Element weatherEl = doc.createElement("weather");
			Element rainEl = doc.createElement("rain");
			rainEl.appendChild(doc.createTextNode(Integer.toString(entry.getWeather().getRainPercentage())));
			weatherEl.appendChild(rainEl);
			Element sunEl = doc.createElement("sun");
			sunEl.appendChild(doc.createTextNode(Integer.toString(entry.getWeather().getAmountOfSun())));
			weatherEl.appendChild(sunEl);
			entryEl.appendChild(weatherEl);
			
			
		}
		
		return doc;
	}

}
