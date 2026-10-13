class CelulaAnticuerpo extends Celula {
  CelulaAnticuerpo (float x, float y) {
    super (x,y, 20, color(255));
  }
  
  void actualizar () {
    if (keyPressed) {
      if ( key == 'a' || key == 'A') {
        x-= 5;
      }
      if (key == 'd' || key == 'D') {
        x+= 5;
      }
      if (key == 'w' || key == 'W') {
        y-= 5;
      }
      if (key == 's' || key == 'S') {
        y+= 5;
      }  
    }
  }
}
