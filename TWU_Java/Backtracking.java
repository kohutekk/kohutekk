import java.util.*;
  
class GFG 
{
	//Declaring and initializing global variables
	static int N = 4; 
	static int []ld = new int[30];
	static int []rd = new int[30];
	static int []cl = new int[30];
	
	//Driver Code
	public static void main(String[] args)
	{
		solveNQ();
	}
  
	//Navigating what type of solutions to try in what order
	//AKA Where the backtracking happens
	static boolean solveNQ()
	{
		//Setting up 4x4 board
		int board[][] = {{ 0, 0, 0, 0 },
						 { 0, 0, 0, 0 },
						 { 0, 0, 0, 0 },
						 { 0, 0, 0, 0 }};
	
		//Checks if there is a usable solution
		if (solveNQUtil(board, 0) == false) 
		{
			//Incase there isn't a solution
			System.out.printf("Solution does not exist");
			return false;
		}
		//Incase there is a solution
		printSolution(board);
		return true;
	}
  
	//A recursive utility function to solve nQueen problem 
	static boolean solveNQUtil(int board[][], int col)
	{
		//If all of the queens are placed 
		if (col >= N)
			return true;
  
		//Loop rolling through the columns 
		for (int i = 0; i < N; i++)
		{
			//Rolling though the rows within the column
			if ((ld[i - col + N - 1] != 1 && rd[i + col] != 1) && cl[i] != 1){
				
				//Placing a queen on board[i][col]
				board[i][col] = 1;
				ld[i - col + N - 1] =
				rd[i + col] = cl[i] = 1;
  
				//Inializin the next queen
				if (solveNQUtil(board, col + 1))
					return true;
  
				//Removing the queen if not the right place
				board[i][col] = 0; //BACKTRACK
				ld[i - col + N - 1] =
				rd[i + col] = cl[i] = 0;
			}
		}
  
		//If not a solution...
		return false;
	}
  
	//Module for printing the solution
	static void printSolution(int board[][])
	{
		for (int i = 0; i < N; i++)
		{
			for (int j = 0; j < N; j++)
				System.out.printf(" %d ", board[i][j]);
			System.out.printf("\n");
		}
	}
}
  
 /* This code is inspired by Princi Singh */