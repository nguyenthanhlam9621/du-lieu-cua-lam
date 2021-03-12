public class Point2D {
    protected int x=0;
    protected int y=0;

    public Point2D(){
        x=1;
        y=1;
    }
    public  Point2D(int x,int y){
        this.x=x;
        this.y=y;
    }

    public int getX(){
        return this.x;
    }
    public void setX(int x){
        this.x=x;
    }
    public  int getY(){
        return this.y;
    }
    public void  setY(int y){
        this.y=y;
    }
    public String toString(){
        return "("+this.x+", "+this.y+")";
    }
}
