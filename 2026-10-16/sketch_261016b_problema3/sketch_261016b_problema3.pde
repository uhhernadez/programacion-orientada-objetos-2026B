class Tamal {
  float posicionX;
  float posicionY;
  float masa;
  
  Tamal () {
    posicionY = 0;
    posicionX = random(0, width);
    masa = random(30, 60);
  }
  void mostrar () {
    circle(posicionX, posicionY, masa);
  }
  
  void caer () {
    posicionY+=2;
    posicionY = (posicionY > height)?0:posicionY;
  }
}

class TamalOaxaqueno extends Tamal {
  TamalOaxaqueno() {
    super ();
  }
  void mostrar() {
    square(posicionX, posicionY, masa);
  }
  void caer () {
    posicionY+=3;
    posicionY = (posicionY > height)? 0: posicionY;
  }
}

ArrayList<Tamal> vaporera;
void setup () {
  size (500, 500);
  vaporera = new ArrayList<Tamal>();
  for (int i = 0; i < 5; i++) {
    vaporera.add (new Tamal());
  }
  for (int i = 0; i < 5; i++) {
    vaporera.add (new TamalOaxaqueno());
  }
}

void draw () {
  background(125);
  for (Tamal t : vaporera) {
    t.mostrar();
    t.caer();
  }
}
