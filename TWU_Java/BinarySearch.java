//Made by: Kara Kohutek
//Class: CSCI 3053.01
//Project 02: Recursion - Question 1

//Binary Search of an array to locate the value 'aKey'
//Answer should be 8

class BinarySearch{
	
	private static int[] num = new int[] {2, 4, 5, 6, 7, 8, 10, 11, 12, 13};
	
	public static void main(String[] args){
	    int aKey = 12, start = 0;
	    int end = num.length;
		int location = method(aKey, start, end);
		System.out.println(location);
	}
	
	public static int method(int aKey, int start, int end){
	    if(start > end)
	        return -1;
	        
	    int mid = (start + end)/ 2;
	    
	    if(aKey == num[mid]){
	        return mid;
	    } else if(aKey < num[mid]){
	        return method(aKey, start, mid - 1);
	    } else{
	        return method(aKey, mid + 1, end);
	    }
	}
}