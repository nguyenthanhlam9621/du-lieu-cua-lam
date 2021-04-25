public class Student {
    private double maths;
    private double physic;
    private double chemistry;
    private String name;
    private String classes;

    public Student() {
    }

    public Student(double maths, double physic, double chemistry, String name, String classes) {
        this.maths = maths;
        this.physic = physic;
        this.chemistry = chemistry;
        this.name = name;
        this.classes = classes;
    }

    public double getMaths() {
        return maths;
    }

    public void setMaths(double maths) throws Exception {
        if (maths >= 0 && maths <= 10) {
            this.maths = maths;
        } else {
            throw new Exception("math must be 0-10");
        }
    }

    public double getPhysic() {
        return physic;
    }

    public void setPhysic(double physic) throws Exception {
        if (physic >= 0 && physic <= 10) {
            this.physic = physic;
        } else {
            throw new Exception("physic must be 0-10");
        }
    }

    public double getChemistry() {
        return chemistry;
    }

    public void setChemistry(double chemistry) throws Exception {
        if (chemistry >= 0 && chemistry <= 10) {
            this.chemistry = chemistry;
        } else {
            throw new Exception("Chemistry must be 0-10");
        }

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClasses() {
        return classes;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }
    public double getAverage(){
        return (maths+physic+chemistry)/3;
    }

    public String getType(){
        double average = getAverage();
        if(average<4){
            return "D";
        }else if (average >=4 && average <6){
            return "C";
        }else if(average>7.5){
            return "A";
        }else if (average>=6 && average<=7.5){
            return "B";
        }
        return "";
    }
}
