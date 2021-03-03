public class TestStudent {
    public static void main(String[] args){
        Student n0 =new Student();
        System.out.println("Name :"+n0.getName());
        System.out.println("GPA is:"+n0.getGpa());
        Student n1 =new Student("Nguyen Thanh Lam",100);
        System.out.println("Name :"+n1.getName());
        System.out.println("GPA is:"+n1.getGpa());
    }
}
