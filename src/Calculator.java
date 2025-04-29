
import MathOperations.Addition;
import MathOperations.Divide;
import MathOperations.Factorial;
import MathOperations.Multiply;
import MathOperations.Substraction;
import java.util.Scanner;

public class Calculator {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.println("Enter your calculation: \n Use the following operators: \n + for addition \n - for substraction \n * for multiplication \n / for division \n ! for factorial");
        String input = scan.nextLine();

        input = input.replaceAll("\\s", "");

        int result = 0;

        if (input.contains("!")) {
            int n = Integer.parseInt(input.replace("!", ""));
            result = new Factorial().fact(n);
            System.out.println("Result: " + result);
        } else {
            String[] parts = input.split("(?<=[-+*/])|(?=[-+*/])");
            if (parts.length != 3) {
                System.out.println("Invalid input format");
                return;
            }

            int a = Integer.parseInt(parts[0]);
            String operation = parts[1];
            int b = Integer.parseInt(parts[2]);

            if (operation.equals("+")) {
                result = new Addition().add(a, b);
            } else if (operation.equals("-")) {
                result = new Substraction().substract(a, b);
            } else if (operation.equals("*")) {
                result = new Multiply().multiply(a, b);
            } else if (operation.equals("/")) {
                if (b == 0) {
                    System.out.println("Division by zero is not possible");
                    return;
                }
                result = new Divide().divide(a, b);
            } else {
                System.out.println("Invalid operation");
                return;
            }

            System.out.println("Result: " + result);

        }
    }
}
