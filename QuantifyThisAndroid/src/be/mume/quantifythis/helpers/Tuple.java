package be.mume.quantifythis.helpers;

/**
 * Created with IntelliJ IDEA.
 * User: nik
 * Date: 03/11/12
 * Time: 15:23
 * To change this template use File | Settings | File Templates.
 */
public class Tuple<X,Y> {
    public final X first;
    public final Y second;
    public Tuple(X x, Y y){
        first = x;
        second = y;
    }
}
