public class Account {
    private String id,name;
    private int blance=0;

    public Account(String id,String name){
        this.id=id;
        this.name=name;
    }
    public Account(String id,String name,int blance){
        this.id=id;
        this.name=name;
        this.blance=blance;
    }
    public String getId(){
        return id;
    }
    public String getName(){
        return name;
    }

    public int getBlance() {
        return blance;
    }
    public int Credit(int amount){
        return blance+= amount;
    }
    public int debit(int amount){
        if (amount <= blance){
            blance-=amount;
        }else {
            System.out.println("amount exceeded");
        }
        return blance;
    }
    public int transferTo(Account another,int amount){
        if (amount<blance){
            this.blance-=amount;
            another.blance+=amount;
        }else {
            System.out.println("amount exceeded");
        }
        return blance;
    }
    public String toString(){
        return "Account[id="+id+",name= "+name+"balance= "+blance+"]";
    }
}
