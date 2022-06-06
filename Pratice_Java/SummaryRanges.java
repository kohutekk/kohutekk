//Summary Ranges
import java.io.*;
import java.util.*;

public class MyClass {
    public static void main(String args[]) {
      Scanner scan = new Scanner(System.in);
      int start, end; 
      Boolean mark = false; 
      Stack<String> stack = new Stack<String>();
      
      System.out.println("Enter int list: ");
      
      String str = scan.nextLine();
      String[] strarr = str.split(" ");
      
      int[] nums = new int[strarr.length];
      for(int i = 0; i < strarr.length; i++){
          nums[i] = Integer.parseInt(strarr[i]);
      }
      
      for(int i = 0; i < (nums.length - 1); i++){
          if(i == 0){
              start = nums[i];
              continue; 
          }else if(nums[i] == start + 1){
              end = nums[i];
              mark = true; 
          }else{
              end == null; 
              mark = false; 
          }
          
          if(mark = false && end = null){
              stack.push(start);
              continue;
          }else if(mark = false){
              stack.push(start + "->" + end);
          }
          
          /*int j = i + 1;
          System.out.println(nums[i] + " : " + nums[j]);
          if(nums[i] == (nums[j] - 1)){
              System.out.println(nums[i] + " is one more than " + nums[j]);
          }else{
              System.out.println(nums[i] + " is NOT one more than " + nums[j]);
          }
          System.out.println("----------------------------------------------");*/
      }
      
      System.out.println(stack);
      
    }
}
