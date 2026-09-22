Nave nave;
ArrayList<Cometa> cometas;
void setup () {
  size (500, 500);
  nave = new Nave(20, 30, 15, color(125, 0, 10));
  cometas = new ArrayList<Cometa>();
  for (int i = 0; i  < 300; i++) {
      float x = random (0, width);
      float y = random (0, height);
      float radio = random (10, 25);
      color fondo = color(45, 90, 10);
      cometas.add(new Cometa(x,y,radio, fondo));
  }
}

void draw () {
  background (125);
  nave.dibujar();
  nave.mover(mouseX, mouseY);
  for (Cometa c: cometas) {
    c.dibujar();
  }
  
  for (int i = cometas.size() - 1; i >=0; i--) {
    Cometa c = cometas.get(i);
    if( nave.colision(c) ) {
      cometas.remove(i);
    }
  }
  
}
