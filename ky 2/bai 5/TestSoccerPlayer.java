public class TestSoccerPlayer {
    public static void main(String[] args){
        SoccerPlayer player0=new SoccerPlayer();
        System.out.println("Name Soccer player:"+player0.run());
        System.out.println("Number Soccer player:"+player0.jump());
        System.out.println("Player kickball:"+player0.kickBall());
        SoccerPlayer player1=new SoccerPlayer("Nguyen Thanh Lam",10,10,10);
        System.out.println("Name Soccer player:"+player1.run());
        System.out.println("Number Soccer player:"+player1.jump());
        System.out.println("Player kickball:"+player1.kickBall());
    }
}
