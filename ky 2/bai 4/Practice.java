import java.util.Scanner;

public class Practice {
    public static void main(String[] args){
        int Maths0,Science0,English0,Maths1,Science1,English1;
        Scanner point= new Scanner(System.in);
        System.out.println("Enter marks obtained in Maths: ");
        Maths0 = point.nextInt();
        System.out.println("Enter marks obtained in Science: ");
        Science0 = point.nextInt();
        System.out.println("Enter marks obtained in English: ");
        English0= point.nextInt();

        System.out.println("");

        System.out.println("Enter marks obtained in Maths: ");
        Maths1 = point.nextInt();
        System.out.println("Enter marks obtained in Science: ");
        Science1 = point.nextInt();
        System.out.println("Enter marks obtained in English: ");
        English1= point.nextInt();
        System.out.println("");

        System.out.println("Marks of ThiDK");
        System.out.printf("Maths = %d \n",Maths0);
        System.out.printf("Maths = %d \n",Science0);
        System.out.printf("Maths = %d \n",English0);
        System.out.println("");

        System.out.println("Marks of Bill");
        System.out.printf("Maths = %d \n",Maths1);
        System.out.printf("Maths = %d \n",Science1);
        System.out.printf("Maths = %d \n",English1);

        System.out.printf("Total marks scored by thiDK = %d\n",(Maths0+Science0+English0));
        System.out.printf("Percentage = %d%%\n\n",(Maths0+Science0+English0)/3);

        System.out.printf("Total marks scored by Bill = %d\n",(Maths1+Science1+English1));
        System.out.printf("Percentage = %d%%\n\n",(Maths1+Science1+English1)/3);


        System.out.println("Is ThiDK's percentage lesser than Bill? "+ (((Maths0+Science0+English0)/3) < ((Maths1+Science1+English1)/3)?"Yes":"No"));
        System.out.println("Is ThiDK's percentage greater than Bill?"+ (((Maths0+Science0+English0)/3) > ((Maths1+Science1+English1)/3)?"Yes":"No"));
        System.out.println("ThiDK's and Bill's percentage are equal? "+ (((Maths0+Science0+English0)/3) == ((Maths1+Science1+English1)/3)?"Yes":"No"));

        System.out.println("");
        System.out.println("Scholarship Amount for ThiDK = " + ((((Maths0+Science0+English0)/3) > 75)? "$2000" :
                (((((Maths0+Science0+English0)/3)>=60) && (((Maths0+Science0+English0)/3) < 75)) ? "$1000" : "$0")));
        System.out.println("Scholarship Amount for Bill = " + ((((Maths1+Science1+English1)/3) > 75)? "$2000" :
                (((((Maths1+Science1+English1)/3)>=60) && (((Maths1+Science1+English1)/3) < 75)) ? "$1000" : "$0")));

}}
