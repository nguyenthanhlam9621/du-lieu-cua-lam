public class MyFileName {
    private String input;

    public MyFileName() {

    }

    public MyFileName(String input) {
        this.input = input;
    }

    public String getPath() {
        if(input.contains(".")){
            if (input == null || "".equals(input)) {
            return "";
        }

            int lastIndex = input.lastIndexOf('\\');

            return input.substring(0, lastIndex);
        }else {
            return input.substring(0,input.length());
        }
    }

    public String getFileName() {
        if (input == null || "".equals(input)) {
            return "";
        }
        int index = input.lastIndexOf("\\");
        int indexOfDot = input.indexOf('.');
        if (index != -1 && indexOfDot != -1) {
            return input.substring(index + 1, indexOfDot);
        }
        return "";
    }

    public String getExtension() {
        if (input == null || "".equals(input)) {
            return "khong co";
        }
        int indexOfDot = input.lastIndexOf(".");
        if (indexOfDot != -1) {
            return input.substring(indexOfDot + 1, input.length());
        }
        return "";
    }

    public String getDisk() {
        if (input == null || "".equals(input)) {
            return "";
        }
        int index = input.indexOf('\\');
        if (index != -1) {
            return input.substring(0, index);
        }
        return "";
    }

    public String[] getFolders() {
        if (input == null || "".equals(input)) {
            return null;
        }
        int star = input.indexOf("\\");
        int end = input.lastIndexOf("\\");

        if (input.contains(".")) {
            if (star != -1 && end != -1) {
                if (star == end) {
                    String folders = input.substring(star, input.length());
//                    System.out.println("folder: " + folders);
                    return folders.split("\\\\");
                } else {
                    String folders = input.substring(star + 1, end);
                    return folders.split("\\\\");
                }

                // System.out.println(folders);
            }
        }else {
            String folders= input.substring(star,input.length());
            return folders.split("\\\\");
        }

        return null;
    }
}
