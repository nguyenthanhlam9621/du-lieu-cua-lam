import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String path, content;
        boolean checkwrite = false;
        System.out.println("============= Writer Program ===============");
        System.out.println("Do you want write file?(Y/N )");
        String answer = sc.nextLine();

        if (answer.equalsIgnoreCase("Y")) {
            System.out.println("Please input path file:");
            path = sc.nextLine();
            System.out.println("Save file with content <save>or<SAVE>\nPlease input content file:");
            content = sc.nextLine();
            FileManagement FM = new FileManagement();
            checkwrite = FM.writeFile(path,content);
            if (checkwrite) {
                System.out.println("in thanh cong");
            } else {
                System.out.println("in that bai");
            }
        } else if (answer.equalsIgnoreCase("n")) {
            System.out.println("do you wan't read file Y/N");
            String rfile =sc.nextLine();
            if (rfile.equalsIgnoreCase("y")){
                System.out.println("Please input path file: ");
                path =sc.nextLine();
                FileManagement FM= new FileManagement();
                System.out.println(FM.readFile(path));
            }else {
                sc.close();
            }

        }

    }
}
