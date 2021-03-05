public class TestCircle {
    public static void  main(String[] args){
        Circle c1= new Circle();
        System.out.println(c1.toString());
        System.out.println(c1);
        System.out.println("Operator'+' invokes toString() too: "+c1);
        Circle c2=new Circle(2.0);
        System.out.println(c2.toString());
        System.out.println(c2);
        System.out.println("Operator'+' invokes toString() too: "+c2);
        Circle c3=new Circle(99.9,"Moa");
        System.out.println(c3.toString());
        System.out.println(c3);
        System.out.println("Operator'+' invokes toString() too: "+c3);
        Circle c4=new Circle();
        c4.setRadius(5.0);
        c4.setColor("mao");
    }
}
