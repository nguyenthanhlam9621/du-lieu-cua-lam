public class Car {
    private int plateNumber;
    private int xLovation;
    private int yLovation;
    private String speed;

    public Car(){
        plateNumber=0;
        xLovation=0;
        yLovation=0;
        speed="moa";
    }
    public Car(int pL, int x,int y,String sp){
        plateNumber=pL;
        xLovation= x;
        yLovation=y;
        speed=sp;
    }

    public int move(){
        return xLovation+yLovation;
    }
    public int park(){
        return plateNumber;
    }
    public String accelerate(){
        return speed;
    }
}
