public class main1 {
    public static void main(String[] args) {
        try {
            div(10, 0);
        } catch (ArithmeticException e) {
            System.out.println(e.getMessage());
        }
    }

    static int div(int a, int b) throws ArithmeticException {

        if (b == 0) {
            throw new ArithmeticException ("Loi chia cho 0");
        }
        return a / b;
    }
}
