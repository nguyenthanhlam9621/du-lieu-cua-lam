public class Point {
    private int x;
    private int y;

    public Point(int x,int y){
        this.x=x;
        this.y=y;
    }
    public int getX(){
        return this.x;
    }
    public void setX(int x){
        this.x=x;
    }

    public int getY(){
        return this.y;
    }
    public void setY(int y){
        this.y=y;
    }
    public int[] getXY(){
        int[] a = {x,y};
        return a;
    }
    public void setXY(int x,int y){
        this.x=x;
        this.y=y;
    }
    public double distance(Point a){

        return Math.sqrt((this.x-a.x)+(this.y-a.y));
    }
}
