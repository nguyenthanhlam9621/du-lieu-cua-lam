public class AverageMethodOverloading {
    public static void main(String[] args){
        System.out.println(average(8, 6));
        System.out.println(average(8, 6, 9));
        System.out.println(average(8.1, 6.1));
        System.out.println(average(8, 6.1));
    }
    public static int average(int n1,int n2){
        System.out.println("version 1");
        return (n1+n2)/2;
    }
    public static int average(int n1,int n2,int n3){
        System.out.println("version 2");
        return (n1+n2+n3)/3;
    }
    public static double average(double n1,double n2){
        System.out.println("version 3");
        return (n1+n2)/2.0;
    }
}
