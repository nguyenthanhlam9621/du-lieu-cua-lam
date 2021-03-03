import java.util.Scanner;

public class lab3_2 {
    public static void main(String[] args){

        Scanner Scan= new Scanner(System.in);

        System.out.println("Enter The number of items: ");
        int ii= Scan.nextInt();
        int [][]num= new int[ii][2];
        for(int i=0;i<ii;++i){
            for (int j=0;j<2;++j) {
                if (j==0){
                    System.out.println("Enter The number of items" + (i + 1));
                    num[i][j] = Scan.nextInt();}
                if (j==1){
                    System.out.println("Enter The item's price "+(i + 1));
                    num[i][j]=Scan.nextInt();
                }
            }
        }
    }
}
