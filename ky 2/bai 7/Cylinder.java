public class Cylinder extends Circle{
    private double height=1.0;

    public Cylinder(){
        height=2.0;
    }
    public Cylinder(double height){
        super();
        this.height=height;
    }
    public Cylinder(double height,double radius){
        super(radius);
        this.height=height;
    }
    public Cylinder(double height,double radius,String color){
        super(radius,color);
        this.height=height;
    }

    public double getHeight(){
        return height;
    }
    public void setHeight(double height){
        this.height=height;
    }
    public String toString(){
        return "[ radius ="+radius+"\tcolor = "+color+"\theight = "+height+"]";
    }
    public double getVolume(){
        return getArea()*height;
    }
}
