//Contains Backmenu and Mainmenu
//Both are used to navigate throught different forms of information
//from the StudentInfo and foundation. Read comments to understand further.


//This is a class all on its own so it will be complied separately 
//Made for retriving and setting up the foundation for use
class Backmenu {

	//Retriving data from foundation and Backmenu
    private foundation listing11;
    private Backmenu nextnode;
	
	//Updating the list from foundation
    public Backmenu(foundation listing11) {
        this.listing11 = listing11;
    }
	
	//Getting the list from foundation
    public foundation getListing() {
        return listing11;
    }
	
	//Setting the list from foundation
    public void setListing(foundation listing11) {
        this.listing11 = listing11;
    }
	
	//Getting your location in the list
    public Backmenu getnextnode() {
        return nextnode;
    }
	
	//Setting your location in the list
    public void setnextnode(Backmenu nextnode) {
        this.nextnode = nextnode;
    }
}


//The class to do what is asked in the menu
public class Mainmenu {
   
	//Retriving data from Backmenu
	private Backmenu headnode;
    
	//Resetting the node count for first use
	public Mainmenu() {
        headnode = null;
    }
	
	//Inserting information
    public void insert(foundation listing11) {
		
		//Declaring listingNode for future use
		Backmenu listingNode = new Backmenu(listing11);
        
		//If the list doesnt exist use Backmenu to initiate it
		//Else use the location of the next empty space to add information using Backmenu
		if(headnode == null) {
            headnode = listingNode;
        } else {
            Backmenu tempval = headnode;
            while (tempval.getnextnode() != null) {
                tempval = tempval.getnextnode();
            }
            tempval.setnextnode(listingNode);
        }
    }
	
	//Fetching information
    public foundation fetch(String name) {
		
		//Location of what to fetch
        Backmenu tempval = headnode;
		
		//While fetch location is valid print the information
        while (tempval != null) {
			//Using methods from Backmenu
            if(tempval.getListing().getNamedata().equalsIgnoreCase(name)) {
                return tempval.getListing();
            }
			//Moves to the next location
            tempval = tempval.getnextnode();
        }
		
		//Stops the fetch
        return null;
    }
	
	//Deleting information
    public boolean delete(String name) {
		
		//Location of what to delete
        Backmenu tempval = headnode;
        boolean found = false;
		
		//If there is something in that location
        if(headnode != null) {
			//If the location has everything filled out, delete location
            if(headnode.getListing().getNamedata().equalsIgnoreCase(name)) {
                headnode = headnode.getnextnode();
                found = true;
            } else {
				//Else while the next location has information...
                while (tempval.getnextnode() != null) {
					//If it also has all of the information filled out, delete the location
                    if (tempval.getnextnode().getListing().getNamedata().equalsIgnoreCase(name)) {
                        found = true;
                        tempval.setnextnode(tempval.getnextnode().getnextnode());
                        break;
                    }
					//Move on to the next location
                    tempval = tempval.getnextnode();
                }
            }
        }
		//Show if it has been deleted or not
        return found;
    }
	
	//Printing all of the information
    public void printAll() {
		
		//Locating where to start
        Backmenu tempval = headnode;
		
		//While the next location has information, print it and move to the next
        while (tempval != null) {
            System.out.println(tempval.getListing().toString() + "\n");
            tempval = tempval.getnextnode();
        }
    }
	
}
