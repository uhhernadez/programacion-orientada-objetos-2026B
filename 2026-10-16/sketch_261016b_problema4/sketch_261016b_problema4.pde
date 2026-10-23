class Plato {
  float x, y, diametro;
  Plato () {
    x = width/2;
    y = height/2;
    diametro = 100;
  }
  void mostrar () {
    circle(x, y, diametro);
  }
  
  boolean hayCuchara (Cuchara c) {
    float d = dist (x, y, c.x, c.y);
    return  d < (c.diametro/2.0 + diametro/2.0);
  }
  
}
class Cuchara {
  float x, y, diametro;
  Cuchara () {
     x = 0;
     y = 0;
     diametro = 20;
  }
  void mostrar () {
    circle(x, y, diametro);
  }
  void mover () {
    x = mouseX;
    y = mouseY;
  }
}

Plato plato;
Cuchara cuchara;

void setup () {
  size (500, 500);
  plato = new Plato ();
  cuchara = new Cuchara ();
}

color fondo = 0;
void draw () {
  background (fondo);
  plato.mostrar();
  cuchara.mostrar();
  cuchara.mover();
  if(plato.hayCuchara(cuchara)) {
    fondo = color(0, 255, 0);
  } else {
    fondo = color (125);
  }
}
