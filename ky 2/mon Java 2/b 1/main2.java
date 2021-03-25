import java.rmi.ServerException;

public class main2 {
    public static void main(String[] args) {
        try {
            connectToServer();
        } catch (ServerException e) {
            System.out.println(e.getMessage());
        }

    }

    static void connectToServer() throws ServerException {
        throw new ServerException(" loi");
    }
}
