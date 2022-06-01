//Summary Ranges

import java.util.Scanner;
import java.util.Arrays;

public class MyClass {
    public static void main(String args[]) {
      Scanner scan = new Scanner(System.in);
      System.out.println("Enter int list: ");
      
      String str = scan.nextLine();
      String[] strarr = str.split(" ");
      
      int[] nums = new int[strarr.length];
      for(int i = 0; i < strarr.length; i++){
          nums[i] = Integer.parseInt(strarr[i]);
      }
      
      System.out.println("Array is: " + nums[0]);
    }
}
