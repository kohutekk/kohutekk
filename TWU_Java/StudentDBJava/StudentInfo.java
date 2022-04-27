import javax.swing.*;
import java.util.Scanner;

public class StudentInfo {

	//Declaring variables for the entire class
    static Scanner indata = new Scanner(System.in);
    static int choice() {
		//Menu
		System.out.println("1. Insert a new student's information");
        System.out.println("2. Fetch and output a student's information");
        System.out.println("3. Delete a student's information");
        System.out.println("4. Update a student's information");
        System.out.println("5. Output all the student information");
        System.out.println("6. Exit the program");
        System.out.print("\nEnter in one of the choices: ");
		//Input
        return indata.nextInt();
    }

	//Main method
    public static void main(String[] args) {

		//Declaring variables and gathering information from Mainmenu and foundation
        int choice11;
        Mainmenu Mainmenu = new Mainmenu();
        foundation listing11;
        String name;

		//Intro to program
		System.out.println("	Welcome to StudentInformation!");
		System.out.println("----------------------------------------------");

		//As long as it hasn't returned...
        while (true) {
			//Print menu and gather input
            choice11 = choice();
			System.out.println("----------------------------------------------");
			
			//Defining input answers
            switch (choice11) {
				
                //Insert
				case 1:
					//Use listing11 from foundation to find location
                    listing11 = new foundation();
					//Using listing11.input and Mainmenu.insert to insert
                    listing11.input();
                    Mainmenu.insert(listing11);
                    System.out.println("Successfully Inserted");
                    break;
					
				//Fetch
                case 2:
                    //Updating screen using Mainmenu.fetch
					name = JOptionPane.showInputDialog("Name to fetch:");
                    listing11 = Mainmenu.fetch(name);
					//If no information in the location then invalid
					//Else use listing11.toString to print
                    if(listing11 == null)
                        System.out.println("Invalid Name");
                    else {
                        System.out.println(listing11.toString());
                    }
                    break;
				
				//Delete
                case 3:
					//Set up the pop up
                    name = JOptionPane.showInputDialog("Name to delete: ");
					//If Mainmenu.delete works then completed
					//Else invalid input
                    if(Mainmenu.delete(name)) {
                        System.out.println("Successfully Deleted");
                    } else {
                        System.out.println("Invalid Name");
                    }
                    break;
				
				//Update
                case 4:
                    //Updating screen using Mainmenu.fetch
					name = JOptionPane.showInputDialog("Name to Update");
                    listing11 = Mainmenu.fetch(name);
                    //If nothing in location then invalid 
					//Else update
					if(listing11 == null){
                        System.out.println("invalid Name");
                    } else {
                        listing11.input();
                        System.out.println("Successfully Updated");
                    }
                    break;
				
				//Output
                case 5:
                    //Prints everything using Mainmenu.printAll
					Mainmenu.printAll();
                    System.out.println("Successfully Printed");
                    break;
				
				//Exit
                case 6:
                    return;
				
				//Try again
                default:
                    System.out.println("Invalid choice. Please try again.");
                    break;
			
            }
			System.out.println("----------------------------------------------");
        }
    }

}
