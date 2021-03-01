import java.util.Scanner;
public class Invoice {
    public  static void main(String[] args){
        int orderedShirts,orderedTrousers,points=0;
        int priceOfShirt=300;
        int priceOfTrouser=700;
        int costOfShirts,costOfTrousers,totalCost;
        double discount,netPay;
        Scanner input= new Scanner(System.in);
        // Accept the order details of the customer
        System.out.println("Enter the number of Shirts to order:");
        orderedShirts=input.nextInt();
        System.out.println("Enter the number of Trousers to order:");
        orderedTrousers= input.nextInt();
        //Compute the total price of the order
        costOfShirts=priceOfShirt*orderedShirts;
        costOfTrousers=priceOfTrouser*orderedTrousers;
        totalCost=costOfShirts+costOfTrousers;
        //Give a discount of ten percent only if the total cost exceeds $3000
        discount=totalCost>3000 ? totalCost *10/100:0;
        netPay=totalCost-discount;
        //Give one percent of the netPay as points only if the invoice amount exceeds $3000
        points=(int) (netPay>3000?netPay/100:0);
        //Display the invoice details
        System.out.println("\nItem\t\t Quantity \t Price\t Total");
        System.out.println("---------------------------------"+"---------------");
        System.out.printf("Shirts \t\t %d\t\t %d \t\t %d\n",orderedShirts,priceOfShirt,costOfShirts);
        System.out.printf("Trousers \t %d \t\t %d \t\t %d\n",orderedTrousers,priceOfTrouser,costOfTrousers);
        System.out.printf("Discount \t \t\t \t\t\t\t %.2f\n",discount);
        System.out.printf("---------------------------------"+"---------------");
        System.out.printf("Net Total\t \t\t \t\t\t\t %.2f\n",netPay);
        System.out.printf("---------------------------------"+"---------------");
        System.out.printf("Points Earned \t %d \n",points);
        System.out.printf("Thank you!\n");
    }
}
