public class Point3D extends  Point2D{
    private int z=0;

    public Point3D(){
        z=1;
    }
    public Point3D(int x,int y,int z){
        super(x,y);
        this.z=z;
    }
    public int getZ(){
        return this.z;
    }
    public void setZ(int z){
        this.z=z;
    }
    public String toString(){
        return "("+super.getX()+","+super.getY()+","+this.z+")";
    }
}
