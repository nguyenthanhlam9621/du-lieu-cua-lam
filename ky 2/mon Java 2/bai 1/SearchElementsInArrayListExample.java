import java.util.ArrayList;
import java.util.List;

public class SearchElementsInArrayListExample {
    public static void main(String[] args){
        List<String> names=new ArrayList<>();
        names.add("John");
        names.add("Alice");
        names.add("Bob");
        names.add("Steve");
        names.add("John");
        names.add("Steve");
        names.add("Maria");
        System.out.println("Does names array contain\"Bod\"?: "+ names.contains("Bob"));
        System.out.println("indexOf\"Steve\": "+ names.indexOf("Steve"));
        System.out.println("indexOf\"Mark\": "+ names.indexOf("Mark"));
        System.out.println("lastIndexOf\"John\": "+ names.indexOf("John"));
        System.out.println("lastIndexOf\"Bill\": "+ names.indexOf("Bill"));
    }
}
