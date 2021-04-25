import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class StudentManagement {
    private List<Student> students = null;

    public StudentManagement() {
        this.students = new ArrayList<>();
    }

    public void addStudent() {
        Scanner sc = new Scanner(System.in);
        while (true) {
            System.out.print("Name:");
            String name = sc.nextLine();
            System.out.print("Class:");
            String classes = sc.nextLine();
            double math = -1, physic = -1, chemistry = -1;

            do {
                try {
                    System.out.print("Math:");
                    math = Double.parseDouble(sc.nextLine());
                } catch (Exception e) {
                    System.out.println("Error" + e.getMessage());
                }
            } while (math < 0 || math > 10);
            do {
                try {
                    System.out.print("physic:");
                    physic = Double.parseDouble(sc.nextLine());
                } catch (Exception e) {
                    System.out.println("Error" + e.getMessage());
                }
            } while (physic < 0 || physic > 10);
            do {
                try {
                    System.out.print("chemistry:");
                    chemistry = Double.parseDouble(sc.nextLine());
                } catch (Exception e) {
                    System.out.println("Error" + e.getMessage());
                }
            } while (chemistry < 0 || chemistry > 10);

            students.add(new Student(math, physic, chemistry, name,classes));

            System.out.println("nhap tiep thi dung an X");
            String anwser = sc.nextLine();
            if (anwser.equalsIgnoreCase("x")) {
                break;
            }
        }
    }

    public void classificationStudents() {
        if (students.size() > 0) {
            int typeA = 0, typeB = 0, typeC = 0, typeD = 0;
            for (var student : students) {
                if (student.getType().equals("A")) {
                    typeA++;
                }
                if (student.getType().equals("B")) {
                    typeB++;
                }
                if (student.getType().equals("C")) {
                    typeC++;
                }
                if (student.getType().equals("D")) {
                    typeD++;
                }
            }
            int totalStudents = students.size();
            System.out.println("A:\t%" + typeA * 100 / totalStudents);
            System.out.println("B:\t%" + typeB * 100 / totalStudents);
            System.out.println("C:\t%" + typeC * 100 / totalStudents);
            System.out.println("D:\t%" + typeD * 100 / totalStudents);
        }else {
            System.out.println("khong co student");
        }

    }
    public void display() {
        if (students.size() > 0) {
            System.out.println("Students List");
            int i=0;
            for (var student : students) {
                i++;
                System.out.printf("Student %d \n",i);
                System.out.println("Name: " + student.getName());
                System.out.println("Class: " + student.getClasses());
                System.out.println("Average: " + student.getAverage());
                System.out.println("Type: " + student.getType());
            }
            System.out.println("--------Classification Info -----");
            classificationStudents();
        } else {
            System.out.println("No student in list");
        }

    }
}



