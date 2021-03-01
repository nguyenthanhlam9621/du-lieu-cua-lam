import java.util.Scanner;

public class IntArrayMethodsTest {
    public static void main(String[] args){
        int numItems;
        int[] items;
        Scanner in=new Scanner(System.in);
        System.out.print("Enter the number of items: ");
        numItems=in.nextInt();
        items= new int[numItems];
        if(items.length>0){
            System.out.print("enter the value of all items (Separated by space");
            for(int i=0; i<items.length ;++i){
                items[i]= in.nextInt();
            }
        }
        System.out.print("The value are: ");
        print(items);
        System.out.println("The min is: "+ min(items));
        System.out.println("The sum is: "+sum(items));
        System.out.printf("The average (rounded to 2 decimal places) is: %.2f%n",average(items));
        in.close();
    }
    public static  void print(int[] array){
        System.out.print("[");
        for (int i=0; i<array.length;++i){
            System.out.print((i==0)? array[i]: ","+array[i]);
        }
        System.out.println("]");
    }
    public  static int min(int[] array) {
        int min = array[0];
        for (int i = 0; i < array.length; ++i) {
            if (array[i] < min) min = array[i];
        }
        return min;
    }
    public  static int sum(int[] array){
        int sum=0;
        for(int item: array)sum+= item;
        return sum;
    }
    public static double average(int[] array){
        return (double)(sum(array))/array.length;
    }
}
