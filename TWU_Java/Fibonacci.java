//Made by: Kara Kohutek
//Class: CSCI 3053.01
//Project 02: Recursion - Question 20

//Code a program that outputs the first 45 terms in the Fibonacci sequence by invoking a non-dynamic recursive method the calculates the nth term of the series.
//Answer should be ...

class Fibonacci{
	
	public static int fib;
	
	public static void main(String[] args){
	    int num = 22;
		System.out.println(method(num));
	}
	
	public static int method(int num){
	    if(num <= 1){
	        fib = num;
	    }else{			
	        fib = method(num - 1) + method(num - 2);
	    }
		return fib;
	}
}