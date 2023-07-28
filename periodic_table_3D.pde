import g4p_controls.*; // importing the gui
boolean pause = false; //intiating all the important variables
boolean showorb = true;

float lastmouseY = 0;
float lastmouseX = 0;
float Atommass;

int atomicNum;
int numN;
int currAtom = 1;

String atomName;
String sym;
String atomtype;
String nextRow;
String mode;
String title;

String[] Data;
String[] thisRowsItems;

Electron e ;
Nucleus n ;
Atom a;

void setup() { // staring set up
  size(1200, 1000, P3D); // sets up the 3D stuff
  createGUI();
  Data = loadStrings("Periodic Table of Elements.txt"); // loading the file data
  mode = "table"; // setting the mode
  maketable(); // set up main screen
}

void draw() { // staring draw
  background(255);
  
  if (mode.equals("table")){ 
    textSize(90);
    fill(0);
    textAlign(CENTER);
    text(title, width/2, 175);
  }
  
  if (mode.equals("atom")){ // only shows atom if the mode is "atom"
    translate(width/2, height/2, 0); // making (0,0) the center
    a.drawText(); // info for the atom
    
    rotateX(GetAngle(lastmouseY)); // getting the angles for rotation
    rotateY(GetAngle(lastmouseX));
    
    a.drawAtom(); // making the atom
  }
}
