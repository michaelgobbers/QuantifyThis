package be.mume.quantifythis.helpers.shakeCounter;

/**
 * Created with IntelliJ IDEA.
 * User: nik
 * Date: 04/11/12
 * Time: 11:59
 * To change this template use File | Settings | File Templates.
 */
public class Vector3d {
    private final double x;
    private final double y;
    private final double z;

    public Vector3d(double x, double y, double z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    public Vector3d minus(final Vector3d other){
        return new Vector3d(getX() - other.getX(), getY() - other.getY(), getZ() - other.getZ());
    }

    public double length(){
        return (double) Math.sqrt(getX()*getX() + getY()*getY() + getZ()*getZ());
    }

    public Vector3d multiply(double scalar){
        return new Vector3d(getX()*scalar, getY()*scalar, getZ()*scalar);
    }

    public Vector3d normalize(){
        double length = length();
        return new Vector3d(getX()/length, getY()/length, getZ()/length);
    }

    public double dotProduct(final Vector3d other){
        return getX() * other.getX() + getY() * other.getY() + getZ() * other.getZ();
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public double getZ() {
        return z;
    }
}
