import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws Exception {

        PersonManagement management = new PersonManagement();
        Scanner sc = new Scanner(System.in);
        ArrayList<Person> persons = new ArrayList<>();
        System.out.println("=====Management Person program=====");
        for (int i = 0; i<3;i++){
            System.out.println("Input Information of Person");
            System.out.print("Please input name: ");
            String name = sc.nextLine();

            System.out.print("Please input address: ");
            String address = sc.nextLine();

            do {
                try
                {
                    System.out.print("Please input salary: ");
                    String sSalary = sc.nextLine();
                    persons.add(management.inputPersonInfo(name,address,sSalary));
                    break;
                }catch (Exception e){
                    System.out.println(e.getMessage());
                }
            }while (true);

        }
        System.out.println("\nInformation of Person you have entered:");
        var personArrayList=management.sortBySalary(persons);
        for (var per : personArrayList) {
            System.out.println(per.toString());
        }
    }
}

