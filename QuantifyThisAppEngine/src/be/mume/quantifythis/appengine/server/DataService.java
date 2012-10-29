package be.mume.quantifythis.appengine.server;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;

import be.mume.quantifythis.appengine.server.entities.Entry;
import be.mume.quantifythis.appengine.server.entities.HeartRate;
import be.mume.quantifythis.appengine.server.entities.Mood;
import be.mume.quantifythis.appengine.server.entities.Sleep;
import be.mume.quantifythis.appengine.server.entities.Weather;
import be.mume.quantifythis.appengine.server.xml.DocumentGenerator;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

/**
 * POST REQUESTS:
 * addMood
 * -mood1
 * -mood2
 * -mood3
 * -mood4
 * -mood5
 * ...
 * -date * (if not given NOW is used) given in long
 * -sleepeff * (integer as string)
 * -sleephours * (integer as string)
 * -bpm* (integer as string)
 * -rainpercentage * (integer as string)
 * -sunhours * (integer as string)
 * 
 * 
 * GET REQUESTS:
 * getMood
 * 
 * (*) parameters are optional.
 * 
 * @author michaelgobbers
 *
 */
@SuppressWarnings("serial")
public class DataService extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp){
		UserService userService = UserServiceFactory.getUserService();
		User user = userService.getCurrentUser();
		String request = req.getParameter("request");
		if(request!=null){
			if(user!=null && request.equals("getMood")){
				EntityManager em = EMF.get().createEntityManager();
				Query emQuery = em.createQuery("SELECT x FROM Entry x WHERE x.userEmail = '"+user.getEmail()+"'");

				List<Entry> resList = emQuery.getResultList();
				if(resList!=null){
					Document doc;
					try {
						doc = new DocumentGenerator().EntryDocument(resList);
						deliverXML(doc, resp);
					} catch (ParserConfigurationException e) {
						e.printStackTrace();
					}
				}
			}
		}
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		UserService userService = UserServiceFactory.getUserService();
		User user = userService.getCurrentUser();
		String request = req.getParameter("request");
		if(request!=null){
			if(user!=null && request.equals("addMood")){
				//get entry fields from request parameters
				Mood moodObject = getMoodFromRequestParams(req);
				Date date = getDateFromRequestParams(req);
				Sleep sleep = getSleepFromRequestParams(req);
				HeartRate heartRate = getHeartRateFromReuestParams(req);
				Weather weather = getWeatherFromRequestParams(req);
				
				//Create Entry
				Entry entry = new Entry(user.getEmail(), date ,moodObject, heartRate, weather, sleep);
				
				//persist entry
				EntityManager em = EMF.get().createEntityManager();
				em.persist(entry);
				em.close();
				
				resp.setContentType("text/html");
	        	resp.getWriter().println("<p>Succesfullt stored</p>");
			}
		}
	}
	private Mood getMoodFromRequestParams(HttpServletRequest req) {
		//Get the mood from the parameters
		String mood = req.getParameter("mood1");
		List<Integer> moodValues = new ArrayList<Integer>();
		for(int i = 2;mood!=null;i++){
			moodValues.add(Integer.parseInt(mood));
			mood = req.getParameter("mood"+Integer.toString(i));
		}
		Mood moodObject = new Mood(moodValues);
		return moodObject;
	}
	private Date getDateFromRequestParams(HttpServletRequest req) {
		//get the date from the parameters
		String dateString = req.getParameter("date");
		Date date;
		if(dateString!=null)
			date = new Date(Long.parseLong(dateString));
		else
			date = new Date();
		return date;
	}
	private Sleep getSleepFromRequestParams(HttpServletRequest req) {
		//get sleep from the parameters
		String sleepeffString = req.getParameter("sleepeff");
		String sleepHoursString = req.getParameter("sleephours");
		Integer sleepeff;
		Integer sleepHours;
		Sleep sleep;
		if(sleepeffString!=null && sleepHoursString!=null){
			sleepeff = Integer.parseInt(sleepeffString);
			sleepHours = Integer.parseInt(sleepHoursString);
			sleep = new Sleep(sleepHours, sleepeff);
		} else {
			sleep = new Sleep(null, null);
		}
		return sleep;
	}
	private HeartRate getHeartRateFromReuestParams(HttpServletRequest req) {
		//get heart Rate from the parameters
		String bpmString = req.getParameter("bpm");
		Integer bpm;
		HeartRate heartRate;
		if(bpmString !=null){
			bpm = Integer.parseInt(bpmString);
			heartRate = new HeartRate(bpm);
		} else {
			heartRate = new HeartRate(null);
		}
		return heartRate;
	}
	private Weather getWeatherFromRequestParams(HttpServletRequest req) {
		//get weather from parameters
		String rainString = req.getParameter("rainpercentage");
		String sunAmountString = req.getParameter("sunhours");
		Integer sunHours;
		Integer rainPercentage;
		Weather weather;
		if(rainString!=null && sunAmountString!=null){
			rainPercentage = Integer.parseInt(rainString);
			sunHours = Integer.parseInt(sunAmountString);
			weather = new Weather(rainPercentage, sunHours);
		} else {
			weather = new Weather(null, null);
		}
		return weather;
	}
	protected void deliverXML(Document doc, HttpServletResponse resp){
		resp.setContentType("text/xml; charset=utf-8");
		try {
			TransformerFactory transfac = TransformerFactory.newInstance();
            Transformer trans = transfac.newTransformer();
            trans.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
            trans.setOutputProperty(OutputKeys.INDENT, "yes");

            //create string from xml tree
            StringWriter sw = new StringWriter();
            StreamResult result = new StreamResult(sw);
            DOMSource source = new DOMSource(doc);
            trans.transform(source, result);
            String xmlString = sw.toString();

            //print xml
            PrintWriter out = resp.getWriter();
            out.println(xmlString);
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch(TransformerException e){
			e.printStackTrace();
		}
	}
}
