package be.mume.quantifythis.helpers;

import be.mume.quantifythis.model.MoodModel;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: nik
 * Date: 22/11/12
 * Time: 20:23
 * To change this template use File | Settings | File Templates.
 */
public interface RetrieveMoodListener {
    void handleMood(List<MoodModel> moodList);
}
