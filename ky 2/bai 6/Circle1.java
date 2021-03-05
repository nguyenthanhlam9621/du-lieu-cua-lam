public class Circle1 {
    private double radius=1.0;

    public Circle1(){
        radius=2.0;
    }
    public Circle1(double radius){
        this.radius=radius;
    }

    public void setRadius(double radius){
        this.radius= radius;
    }

    public double getRadius(){
        return radius;
    }
    public double getArea(){
        return radius*radius*Math.PI;
    }
    public double getCircumference(){
        return radius*radius*Math.PI;
    }
    public  String toString(){
        return "Circle[radius= "+radius+"]";
    }
}
