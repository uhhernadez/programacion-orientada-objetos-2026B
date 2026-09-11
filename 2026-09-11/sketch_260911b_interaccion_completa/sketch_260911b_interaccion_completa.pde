Nave nautilus;
Cometa halley;
void setup () {
  size (500, 500);
  nautilus = new Nave (mouseX, mouseY);
  halley = new Cometa (width, height);
}

void draw () {
  background(200);
  nautilus.dibujar();
  nautilus.mover(mouseX, mouseY);
  nautilus.colision(halley);
  halley.dibujar();
}
