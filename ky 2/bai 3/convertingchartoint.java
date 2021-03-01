public class convertingchartoint {
    public static void main(String[] args){
        char hexchar ='A';
        int dec;
        if (hexchar>= '0'&& hexchar <='9'){
            dec=hexchar-'0';
        }else if (hexchar >= 'A' && hexchar<='F'){
            dec=hexchar-'A'+10;
        }else if(hexchar>= 'a' && hexchar <='f'){
            dec=hexchar-'a'+10;
        }else {
            dec=-1;
            System.out.println("Invalid hex char");
        }
        System.out.println(hexchar+": "+ dec);
    }
}
