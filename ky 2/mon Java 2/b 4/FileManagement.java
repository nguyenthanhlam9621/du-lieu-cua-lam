import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class FileManagement {
    private String path;
    private String content;

    public FileManagement() {
    }

    public boolean writeFile(String path,String content){
        try {
            FileOutputStream file= new FileOutputStream(path);
            file.write(content.getBytes());
            return true;
        }catch (Exception e){
            System.out.print(e);
        }
        return false;
    }
    public String readFile(String path){
        if (path != null){
            try (FileInputStream file=new FileInputStream(path)) {
                int i;
                StringBuilder content= new StringBuilder();
                while ((i = file.read()) != -1){
                    content.append((char) i);
                }
                return content.toString();

            }catch (IOException e){
                System.out.println(e.getMessage());
            }
        }return "loi";
    }
}
