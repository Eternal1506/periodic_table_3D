class Atom{ // a class for the all the elements
  
  Electron e; // setting up the fields
  Nucleus n;
  String name;
  String symbol;
  String type;
  float Amass;
  
  Atom(Electron e, Nucleus n, String name, String sym, String type, float m ){ // setting up the constructor 
    this.e = e;
    this.n = n;
    this.name = name;
    this.symbol = sym;
    this.type = type;
    this.Amass = m;
  }
  
  void drawText(){ // draws all the info about the atom
    pushMatrix();
    translate(-width/2, -height/2, 0);
    textSize(24);
    noFill();
    stroke(0);
    rect(10, 20, 275, 200);
    fill(0);
    noStroke();
    textAlign(LEFT);
    text("Name: " + this.name, 20, 50); 
    text("Symbol: " + this.symbol, 20, 75);
    text("Type: " + this.type, 20, 100);
    text("Number of Protons: " + n.protons, 20, 125);
    text("Number of Neutrons: " + n.neutrons, 20, 150);
    text("Number of Electrons: " + e.numE, 20, 175);
    text("Atomic Mass: " + this.Amass, 20, 200);
    popMatrix();
  }
  
  void drawAtom(){ // draws the atom 
    
    n.drawN(); // making nucleus
  
    e.numberofshells(); // making electrons and the shells
    e.drawE();
  }
}
