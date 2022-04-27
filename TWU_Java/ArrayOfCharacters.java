//Made by: Kara Kohutek
//Class: CSCI 3053.01
//Project 02: Recursion - Question 15

//Outputting an array of characters, c, given the starting and ending indices.
//Answer should be "gfedc"

class ArrayOfCharacters{
	
	private static char[] c = "abcdefghijklmnopqrstuvwxyz".toCharArray();
	
	public static void main(String[] args){
	    int start = 2, end = 6;
		method(start, end);
	}
	
	public static int method(int start, int end){
	    System.out.print(c[end]);
		if(start < end){
	        return method(start, end - 1);
	    }else{
	        return 1;
	    }
	}
}