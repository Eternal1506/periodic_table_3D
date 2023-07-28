float GetAngle(float a) { // gets the angle based on the last mouse X and Y
  if (a == lastmouseX) {
    return -TWO_PI * (a/width);
  }
  
  else if (a == lastmouseY) {
    return -TWO_PI * (a/height);
  }
  
  else {
    return TWO_PI;
  }
}

void mouseDragged(){ // when the mouse is dragged it stores the X and Y value
  if (mode == "atom") {
    lastmouseY = mouseY;
    lastmouseX = mouseX;
  }
}

void getData (int i){ // gets all the data for the atom based on the currAtom
  nextRow = Data[i];
  String[] thisRowsItems = nextRow.split(",");
  atomicNum = int(thisRowsItems[0]);
  numN = int(thisRowsItems[4]);
  atomName = thisRowsItems[1];
  sym = thisRowsItems[2];
  atomtype = thisRowsItems[15] ;
  Atommass = float(thisRowsItems[3]) ;
}

void maketable(){ // sets up the main screen
  mode = "table";
  title = "The Period Table Of Elements";
  H.setVisible(true);  
  He.setVisible(true);
  Li.setVisible(true);
  Be.setVisible(true);
  B.setVisible(true);
  C.setVisible(true);
  N.setVisible(true);
  O.setVisible(true);
  F.setVisible(true);
  Ne.setVisible(true);
  Na.setVisible(true);
  Mg.setVisible(true);
  Al.setVisible(true);
  Si.setVisible(true);
  P.setVisible(true);
  S.setVisible(true);
  Cl.setVisible(true);
  Ar.setVisible(true);
  next.setVisible(false);
  previous.setVisible(false);
  moveE.setVisible(false);
  showOrb.setVisible(false);
  back.setVisible(false);
  AlkaliM.setVisible(true);
  AlkalineEM.setVisible(true);
  PTM.setVisible(true);
  Metalliods.setVisible(true);
  NonMetals.setVisible(true);
  Halogens.setVisible(true);
  NobleGas.setVisible(true);
  lastmouseY = 0;
  lastmouseX = 0;
}

void makeAtom(){ // sets up the 3D atom
  mode = "atom";
  getData(currAtom);
  e = new Electron(atomicNum);
  n = new Nucleus(atomicNum, numN);
  a = new Atom(e, n, atomName, sym, atomtype, Atommass);
  n.getRadius();
  H.setVisible(false);  
  He.setVisible(false);
  Li.setVisible(false);
  Be.setVisible(false);
  B.setVisible(false);
  C.setVisible(false);
  N.setVisible(false);
  O.setVisible(false);
  F.setVisible(false);
  Ne.setVisible(false);
  Na.setVisible(false);
  Mg.setVisible(false);
  Al.setVisible(false);
  Si.setVisible(false);
  P.setVisible(false);
  S.setVisible(false);
  Cl.setVisible(false);
  Ar.setVisible(false);
  next.setVisible(true);
  previous.setVisible(true);
  moveE.setVisible(true);
  showOrb.setVisible(true);
  back.setVisible(true);
  AlkaliM.setVisible(false);
  AlkalineEM.setVisible(false);
  PTM.setVisible(false);
  Metalliods.setVisible(false);
  NonMetals.setVisible(false);
  Halogens.setVisible(false);
  NobleGas.setVisible(false);
}

void AlkaliMetals(){ //shows the alkali metals
  title = "Alkali Metals";
  H.setVisible(false);  
  He.setVisible(false);
  Li.setVisible(true);
  Be.setVisible(false);
  B.setVisible(false);
  C.setVisible(false);
  N.setVisible(false);
  O.setVisible(false);
  F.setVisible(false);
  Ne.setVisible(false);
  Na.setVisible(true);
  Mg.setVisible(false);
  Al.setVisible(false);
  Si.setVisible(false);
  P.setVisible(false);
  S.setVisible(false);
  Cl.setVisible(false);
  Ar.setVisible(false);
  next.setVisible(false);
  previous.setVisible(false);
  moveE.setVisible(false);
  showOrb.setVisible(false);
  back.setVisible(true);  
  AlkaliM.setVisible(false);
  AlkalineEM.setVisible(false);
  PTM.setVisible(false);
  Metalliods.setVisible(false);
  NonMetals.setVisible(false);
  Halogens.setVisible(false);
  NobleGas.setVisible(false);
}

void AlkalineEarthMetals(){ //shows the alkaline earth metals
  title = "Alkaline Earth Metals";
  H.setVisible(false);  
  He.setVisible(false);
  Li.setVisible(false);
  Be.setVisible(true);
  B.setVisible(false);
  C.setVisible(false);
  N.setVisible(false);
  O.setVisible(false);
  F.setVisible(false);
  Ne.setVisible(false);
  Na.setVisible(false);
  Mg.setVisible(true);
  Al.setVisible(false);
  Si.setVisible(false);
  P.setVisible(false);
  S.setVisible(false);
  Cl.setVisible(false);
  Ar.setVisible(false);
  next.setVisible(false);
  previous.setVisible(false);
  moveE.setVisible(false);
  showOrb.setVisible(false);
  back.setVisible(true);  
  AlkaliM.setVisible(false);
  AlkalineEM.setVisible(false);
  PTM.setVisible(false);
  Metalliods.setVisible(false);
  NonMetals.setVisible(false);
  Halogens.setVisible(false);
  NobleGas.setVisible(false);
}

void PostTransMetals(){ // shows the post transition metals
  title = "Post Transition Metals";
  H.setVisible(false);  
  He.setVisible(false);
  Li.setVisible(false);
  Be.setVisible(false);
  B.setVisible(false);
  C.setVisible(false);
  N.setVisible(false);
  O.setVisible(false);
  F.setVisible(false);
  Ne.setVisible(false);
  Na.setVisible(false);
  Mg.setVisible(false);
  Al.setVisible(true);
  Si.setVisible(false);
  P.setVisible(false);
  S.setVisible(false);
  Cl.setVisible(false);
  Ar.setVisible(false);
  next.setVisible(false);
  previous.setVisible(false);
  moveE.setVisible(false);
  showOrb.setVisible(false);
  back.setVisible(true);  
  AlkaliM.setVisible(false);
  AlkalineEM.setVisible(false);
  PTM.setVisible(false);
  Metalliods.setVisible(false);
  NonMetals.setVisible(false);
  Halogens.setVisible(false);
  NobleGas.setVisible(false);
}

void Metalloids(){ // shows the metalloids
  title = "Metalloids";
  H.setVisible(false);  
  He.setVisible(false);
  Li.setVisible(false);
  Be.setVisible(false);
  B.setVisible(true);
  C.setVisible(false);
  N.setVisible(false);
  O.setVisible(false);
  F.setVisible(false);
  Ne.setVisible(false);
  Na.setVisible(false);
  Mg.setVisible(false);
  Al.setVisible(false);
  Si.setVisible(true);
  P.setVisible(false);
  S.setVisible(false);
  Cl.setVisible(false);
  Ar.setVisible(false);
  next.setVisible(false);
  previous.setVisible(false);
  moveE.setVisible(false);
  showOrb.setVisible(false);
  back.setVisible(true);  
  AlkaliM.setVisible(false);
  AlkalineEM.setVisible(false);
  PTM.setVisible(false);
  Metalliods.setVisible(false);
  NonMetals.setVisible(false);
  Halogens.setVisible(false);
  NobleGas.setVisible(false);
}

void OtherNonMetals(){ // shows the other non-metals
  title = "Other Non-Metals";
  H.setVisible(true);  
  He.setVisible(false);
  Li.setVisible(false);
  Be.setVisible(false);
  B.setVisible(false);
  C.setVisible(true);
  N.setVisible(true);
  O.setVisible(true);
  F.setVisible(false);
  Ne.setVisible(false);
  Na.setVisible(false);
  Mg.setVisible(false);
  Al.setVisible(false);
  Si.setVisible(false);
  P.setVisible(true);
  S.setVisible(true);
  Cl.setVisible(false);
  Ar.setVisible(false);
  next.setVisible(false);
  previous.setVisible(false);
  moveE.setVisible(false);
  showOrb.setVisible(false);
  back.setVisible(true);  
  AlkaliM.setVisible(false);
  AlkalineEM.setVisible(false);
  PTM.setVisible(false);
  Metalliods.setVisible(false);
  NonMetals.setVisible(false);
  Halogens.setVisible(false);
  NobleGas.setVisible(false);
}

void Nobelgases(){ // shows the noble gases
  title = "Nobel Gases";
  H.setVisible(false);  
  He.setVisible(true);
  Li.setVisible(false);
  Be.setVisible(false);
  B.setVisible(false);
  C.setVisible(false);
  N.setVisible(false);
  O.setVisible(false);
  F.setVisible(false);
  Ne.setVisible(true);
  Na.setVisible(false);
  Mg.setVisible(false);
  Al.setVisible(false);
  Si.setVisible(false);
  P.setVisible(false);
  S.setVisible(false);
  Cl.setVisible(false);
  Ar.setVisible(true);
  next.setVisible(false);
  previous.setVisible(false);
  moveE.setVisible(false);
  showOrb.setVisible(false);
  back.setVisible(true);  
  AlkaliM.setVisible(false);
  AlkalineEM.setVisible(false);
  PTM.setVisible(false);
  Metalliods.setVisible(false);
  NonMetals.setVisible(false);
  Halogens.setVisible(false);
  NobleGas.setVisible(false);
}

void Halogens(){ // shows the halogens
  title = "Halogens";
  H.setVisible(false);  
  He.setVisible(false);
  Li.setVisible(false);
  Be.setVisible(false);
  B.setVisible(false);
  C.setVisible(false);
  N.setVisible(false);
  O.setVisible(false);
  F.setVisible(true);
  Ne.setVisible(false);
  Na.setVisible(false);
  Mg.setVisible(false);
  Al.setVisible(false);
  Si.setVisible(false);
  P.setVisible(false);
  S.setVisible(false);
  Cl.setVisible(true);
  Ar.setVisible(false);
  next.setVisible(false);
  previous.setVisible(false);
  moveE.setVisible(false);
  showOrb.setVisible(false);
  back.setVisible(true);  
  AlkaliM.setVisible(false);
  AlkalineEM.setVisible(false);
  PTM.setVisible(false);
  Metalliods.setVisible(false);
  NonMetals.setVisible(false);
  Halogens.setVisible(false);
  NobleGas.setVisible(false);
}
