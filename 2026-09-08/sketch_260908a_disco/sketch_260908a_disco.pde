Disco puck;

void setup () {
  size(609, 259);
  puck = new Disco ( 10, height/2, 10);
}

void draw () {
  background(249);
  puck.actualizar();
  puck.dibujar();
}

void mouseClicked () {
  puck.golpear();
}
