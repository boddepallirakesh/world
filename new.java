// A simple Java program to calculate the area of a rectangle
public class Rectangle {
    // Instance variables
    private double length;
    private double width;

    // Constructor to initialize the rectangle
    public Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    // Method to calculate the area
    public double calculateArea() {
        return length * width;
    }

    // Method to display the rectangle's dimensions and area
    public void displayInfo() {
        System.out.println("Rectangle Dimensions:");
        System.out.println("Length: " + length);
        System.out.println("Width: " + width);
        System.out.println("Area: " + calculateArea());
    }

    // Main method to run the program
    public static void main(String[] args) {
        // Create a Rectangle object
        Rectangle myRectangle = new Rectangle(5.0, 3.5);

        // Display information about the rectangle
        myRectangle.displayInfo();
    }
}

