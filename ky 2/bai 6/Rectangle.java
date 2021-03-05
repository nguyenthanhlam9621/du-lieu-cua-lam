public class Rectangle {
    private float lenght=1.0f;
    private float width=1.0f;

    public Rectangle(){
        lenght=2.0f;
        width=2.0f;
    }
    public Rectangle(float lenght,float width){
        this.width=width;
        this.lenght=lenght;
    }

    public float getLenght(){
        return lenght;
    }
    public void setLenght(float lenght){
        this.lenght=lenght;
    }

    public float getWidth() {
        return width;
    }
    public void setWidth(float width){
        this.width=width;
    }
    public double getArea(){
        return lenght*width;
    }
    public double getPerimeter(){
        return (lenght+width)*2;
    }
    public String toString(){
        return "Rectangle[length= "+lenght+"width= "+width+"]";
    }
}
