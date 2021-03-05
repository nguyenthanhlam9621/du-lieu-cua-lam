public class Employee {
    private int id,salary;
    private String firstName,lastName;

    public Employee(int id,String firstName,String lastName,int salary){
        this.id=id;
        this.firstName=firstName;
        this.lastName=lastName;
        this.salary=salary;
    }

    public int getID(){
        return id;
    }
    public String getFirstName(){
        return firstName;
    }
    public String getLastName(){
        return  lastName;
    }
    public String getName(){
        return firstName+lastName;
    }
    public int getSalary(){
        return salary;
    }
    public void setSalary(int salary){
        this.salary=salary;
    }
    public int getAnnualSalary(){
        return salary*12;
    }
    public int raiseSalary(int percent){
        salary=salary*percent;
        return salary;
    }
    public String toString(){
        return "Employee[id=" +id+",name= "+firstName+"Lastname,salary="+lastName+"tien"+salary+"]";
    }
}
