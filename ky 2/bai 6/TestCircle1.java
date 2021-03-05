public class TestCircle1 {
    public static void main(String[] args){
        Circle1 c1=new Circle1();
        c1.setRadius(4.0);
        System.out.println(c1.toString());
        Circle1 c2=new Circle1(6.0);
        System.out.println(c2);
    }
}
