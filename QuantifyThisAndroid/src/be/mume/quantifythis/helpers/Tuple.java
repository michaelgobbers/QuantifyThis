package be.mume.quantifythis.helpers;

/**
 * Class that represents a tuple of two specified Types
 *
 * @author Nik Torfs
 * @param <X> first type
 * @param <Y> second type
 */
public class Tuple<X,Y> {
    public final X first;
    public final Y second;
    public Tuple(X x, Y y){
        first = x;
        second = y;
    }
}
