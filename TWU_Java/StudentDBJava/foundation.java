import javax.swing.*;

//Using encapsulation, we are getting and setting formation, as well as, setting up some other information.
public class foundation {

	//Declaring the class variables
    private String Name;
    private int ID;
    private float grade_point;
    
	//Initiating the unlimited list 
	public foundation(){}

	//Defining what is in side the list
    public foundation(String Name, int ID, float grade_point){
        this.Name = Name;
        this.ID = ID;
        this.grade_point = grade_point;
    }

	//Getting the name
    public String getNamedata() {
        return Name;
    }

	//Setting name
    public void setNamedata(String Name) {
        this.Name = Name;
    }

	//Getting ID
    public int getID() {
        return ID;
    }

	//Setting ID
    public void setID(int ID) {
        this.ID = ID;
    }
	
	//Getting the grade
    public float getgrade_point() {
        return grade_point;
    }

	//Setting the grade
    public void setgrade_point(float grade_point) {
        this.grade_point = grade_point;
    }

	//Deep copy of the selected information
    public foundation deepCopy(){
        foundation clone = new foundation(Name,ID,grade_point);
        return clone;
    }

	//String to show one set of information 
    public String toString(){
        return "Name: " + Name + "\nID: " + ID + "\nGrade: " + grade_point;
    }

	//Getting the input from the user
    public void input(){
        Name = JOptionPane.showInputDialog("Enter a name: ");
        ID = Integer.parseInt(JOptionPane.showInputDialog("Enter an ID: "));
        grade_point = Float.parseFloat(JOptionPane.showInputDialog("Enter a grade point average: "));
    }

}
