import java.util.Scanner;
public class average {
    public static void main(String[] args){
        double mon1,mon2,mon3;
        double TB;
        String cusname;
        Scanner scan= new Scanner(System.in);

        System.out.println("Enter The Customer Name:");
        cusname=scan.nextLine();
        System.out.println("Enter score 1");
        mon1=scan.nextDouble();
        System.out.println("Enter score 2");
        mon2=scan.nextDouble();
        System.out.println("Enter score 3");
        mon3=scan.nextDouble();
        TB=(mon1+mon2+mon3)/3;
        System.out.println("Welcome : "+cusname);
        System.out.printf("Your GPA is : %.3f",TB);
    }
}
