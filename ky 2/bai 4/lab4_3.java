public class lab4_3 {
    public static void main(String[] args){
        for (int line=1;line<=4;line++){
            System.out.print("|");
            for (int i=1;i<=(line-1);i++){
                System.out.print(" ");
            }
            System.out.print("\\");
            for (int i=1;i<=(8-2*line);i++){
                System.out.print("*");
            }
            System.out.print("/");
            for (int i=1;i<=(line-1);i++){
                System.out.print(" ");
            }
            System.out.println("|");
        }
        for (int line=4;line>=1;line--){
            System.out.print("|");
            for (int i=1;i<=(line-1);i++){
                System.out.print(" ");
            }
            System.out.print("/");
            for (int i=1;i<=(8-2*line);i++){
                System.out.print("*");
            }
            System.out.print("\\");
            for (int i=1;i<=(line-1);i++){
                System.out.print(" ");
            }
            System.out.println("|");
        }
    }
}
