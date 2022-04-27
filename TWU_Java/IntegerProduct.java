//Made by: Kara Kohutek
//Class: CSCI 3053.01
//Project 02: Recursion - Question 17

//The product of two integers a and b
//Answer should be 12

class IntegerProduct{
	
	public static void main(String[] args){
	    int a = 3, b = 4;
		int product = method(a, b);
		System.out.println(product);
	}
	
	public static int method(int a , int b){
	    if(a > 1){
	        return b + method(a - 1, b);
	    }else{
	        return b;
	    }
	}
}