public class TestEmployee {
    public static void main(String[] args){
        Employee E1=new Employee(01,"Thanh","Lam",999999999);
        System.out.println(E1);
        System.out.println(E1.getID());
        System.out.println(E1.getAnnualSalary());
        System.out.println(E1.getName());
        System.out.println(E1.getLastName());
        System.out.println(E1.getSalary());
        System.out.println(E1.getFirstName());
        System.out.println(E1.raiseSalary(10));

    }
}
