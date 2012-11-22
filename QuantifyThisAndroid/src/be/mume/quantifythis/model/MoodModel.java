package be.mume.quantifythis.model;

/**
 * Model for representing the mood and extra attributes
 *
 * @author Nik Torfs
 */
public class MoodModel {
    private int cat1;
    private int cat2;
    private int cat3;
    private int cat4;
    private int cat5;
    private int amountOfSleep;
    private int sleepQuality;
    private int heartRate;
    private int temperature;

    public MoodModel(){
        cat1 = 0;
        cat2 = 0;
        cat3 = 0;
        cat4 = 0;
        cat5 = 0;
        amountOfSleep = Integer.MAX_VALUE;
        sleepQuality = Integer.MAX_VALUE;
        heartRate = Integer.MAX_VALUE;
        temperature = Integer.MAX_VALUE;
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
