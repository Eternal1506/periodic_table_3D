class Nucleus{ // a class for the necleus
  
  int protons; // setting up the fields
  int neutrons;
  float radius;
  float Nx[];
  float Ny[];
  float Nz[];
  
  Nucleus( int p, int n){ // making the constructor
    this.protons = p;
    this.neutrons = n;
    this.Nx = new float[this.protons+this.neutrons];
    this.Ny = new float[this.protons+this.neutrons];
    this.Nz = new float[this.protons+this.neutrons];
  }
  
  void getRadius(){ // gets the max radius of the nuclues 
    this.radius = (float(this.protons+this.neutrons) / 40 ) * 100 ;
    for (int i = 0; i < this.protons + this.neutrons; i++){
      this.Nx[i] = random(-this.radius/2, this.radius/2) ;
      this.Ny[i] = random(-this.radius/2, this.radius/2) ;
      this.Nz[i] = random(-this.radius/2, this.radius/2) ;
    }
  }
  
  void drawN(){
    
    for (int i = 0; i < this.protons; i++){ // draws the number of protons
      pushMatrix();
      translate(this.Nx[i], this.Ny[i], this.Nz[i]);
      fill(200, 50, 50);
      sphere(25);
      popMatrix();
    }
   
    for (int i = 0; i < this.neutrons; i++){ // draws the number of neutrons
      pushMatrix();
      translate(this.Nx[i+this.protons], this.Ny[i+this.protons], this.Nz[i+this.protons]);
      fill(253, 218, 13);
      sphere(25);
      popMatrix();
    }
  }
}
