public class SoccerPlayer {
    private String name;
    private int number;
    private int xLocation;
    private int yLocation;

    public SoccerPlayer(){
        name = "Hu Cau";
        number= (-1);
        xLocation = (-1);
        yLocation = (-1);
    }
    public SoccerPlayer(String n,int sa,int x, int y){
        name=n;
        number=sa;
        xLocation=x;
        yLocation=y;
    }
    public String run(){
        return name;
    }
    public int jump(){
        return number;
    }
    public int kickBall(){
        return xLocation+yLocation;
    }
}
