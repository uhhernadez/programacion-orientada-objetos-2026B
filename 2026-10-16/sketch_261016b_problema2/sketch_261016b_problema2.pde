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

Tamal dulce;
void setup () {
  size (500, 500);
  dulce = new Tamal ();
}

void draw () {
  background(125);
  dulce.mostrar();
  dulce.caer();
}
