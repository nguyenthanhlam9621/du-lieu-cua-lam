public class TestCar {
    public static void main(String[] args){
        Car car0= new Car();
        System.out.println("The car move: "+car0.move());
        System.out.println("The car park: "+car0.park());
        System.out.println("The car accelerate: "+car0.accelerate());
        Car car1=new Car(12345,100,100,"fast");
        System.out.println("The car move: "+car1.move());
        System.out.println("The car park: "+car1.park());
        System.out.println("The car accelerate: "+car1.accelerate());
    }
}
