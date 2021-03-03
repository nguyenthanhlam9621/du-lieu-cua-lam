public class Student {
    private String name;
    private int gpa;

    public Student(){
        name = "Hu Cau";
        gpa = 0;
    }
    public Student(String n,int g){
        name =n;
        gpa=g;
    }
    public String getName(){
        return name;
    }
    public int getGpa(){
        return gpa;
    }
}
