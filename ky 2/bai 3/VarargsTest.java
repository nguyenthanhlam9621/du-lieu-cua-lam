public class VarargsTest {
    public static void doSomthing(String...strs){
        System.out.print("Argument are: ");
        for(String str:strs) {
        System.out.print(str + ", ");
    }
        System.out.println();
    }
    public static void doSomething(String s1, String s2) {
        System.out.println("Overloaded version with 2 args: " + s1 + ", " + s2);
    }

    public static void main(String... args) {
        doSomething("Hello", "World", "again", "and", "again");
        doSomething("Hello", "world");

        String[] strs = {"apple", "orange"};
        doSomething(strs);
    }
}
