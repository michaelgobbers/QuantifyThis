package be.mume.quantifythis.helpers.shakeCounter;

/**
 * Implement this interface to listen to shake updates from ShakeCounter
 *
 * @author Nik Torfs
 */
public interface ShakeCounterListener {
    void onShake();
}
