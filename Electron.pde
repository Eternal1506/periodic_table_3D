class Electron{ // a class for the electrons
  
  int numE; // setting up the fields
  int numS;
  int numEouter;
  int orbitRadius;
  int electronRadius;
  int numElectronsinS;
  float electronX;
  float electronY;
  float angle;
  
  
  Electron(int n){ // making the constructor 
    this.numE = n;
    this.numEouter = (this.numE-2) % 8;
    this.orbitRadius = 100;
    this.electronRadius = 10;
    this.angle = TWO_PI;
  }
  
  void numberofshells(){ // gets the number of shells for each element
    if (this.numE == 0)
      this.numS = 0;
      
    else if (this.numE <= 2)
      this.numS = 1;
      
    else{
      if ( (this.numE - 2) % 8 == 0)
        this.numS = 1 + ((this.numE - 2) / 8);
      
      else
         this.numS = 2 + ((this.numE - 2) / 8);
    }
  }
  
  void drawE(){ // makes the electron and the shell
    
    for( int i = 0; i < this.numS; i++){ //gets the number of electrons per shell and then makes each shell
      if (i == 0){
        if (this.numE >= 2){ // first shell can ony have at max 2 electrons
          this.numElectronsinS = 2;
        }
        
        else{
          this.numElectronsinS = 1;
        }
      }
      
      else{ // the shells after can have at most 8 
        if ((this.numE - 2 - ( 8 * (i - 1))) % 8 == 0 || (this.numE - 2 - ( 8 * (i - 1))) / 8 >= 1){
          this.numElectronsinS = 8;
        }
        
        else{
          this.numElectronsinS = (this.numE - 2 - ( 8 * (i - 1))) % 8;
        }
      }
      
      // Draws electron orbits
      if (showorb){
        noFill();
        stroke(0,200,255);
        ellipse(0, 0, 2 * orbitRadius + (150 * i), 2 * orbitRadius + (150 * i));
      }
      
      // Draws electrons
      for (int j = 0; j < this.numElectronsinS; j++) {
        this.electronX = (orbitRadius + (75 * i)) * cos(angle + j * TWO_PI / this.numElectronsinS); // this animates the electrons
        this.electronY = (orbitRadius + (75 * i))  * sin(angle + j * TWO_PI / this.numElectronsinS);

        fill(0,0,205);
        noStroke();
        pushMatrix();
        translate(this.electronX, this.electronY, 0);
        sphere(electronRadius);
        popMatrix();
      }
    }
    
    if (!pause) //  animates the electrons if not paused
      this.angle += 0.02;
  }
}
