//Made by: Kara Kohutek
//Class: CSCI 3053.01
//Project 02: Recursion - Question 14

//The sum of the integers from a to b
//Answer should be 20 (6 + 5 + 4 + 3 + 2)

class IntegersAtoB{
	public static void main(String[] args){
		int a = 2, b = 6;
		int sum = method(a, b);
		System.out.println("Answer: " + sum);
	}
	
	public static int method(int a, int b){
	    if(a < b){
	        return b + method(a, b - 1);
	    }else{
	        return b;
	    }
	}
}