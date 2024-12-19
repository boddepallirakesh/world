// This is a basic Java program

public class HelloWorld {

    // This is the main method which runs when the program starts
    public static void main(String[] args) {

        // Print a greeting message to the console
        System.out.println("Hello, World!");

        // Declare and initialize variables
        int number1 = 10;
        int number2 = 20;

        // Perform a simple addition operation
        int sum = addNumbers(number1, number2);

        // Print the result of the addition
        System.out.println("The sum of " + number1 + " and " + number2 + " is: " + sum);

        // Use a basic if-else control structure
        if (sum > 30) {
            System.out.println("The sum is greater than 30.");
        } else {
            System.out.println("The sum is 30 or less.");
        }
    }

    // A simple method that adds two numbers and returns the result
    public static int addNumbers(int num1, int num2) {
        return num1 + num2;
    }
}
