Nave nautilus;
ArrayList<Cometa> cometas;
void setup () {
  size (500, 500);
  nautilus = new Nave (mouseX, mouseY);
  cometas = new ArrayList<Cometa>();
  for (int i = 0; i < 10; i++) {
    cometas.add(new Cometa(width, height));
  }
}

void draw () {
  background(200);
  nautilus.dibujar();
  nautilus.mover(mouseX, mouseY);
  for (Cometa c:cometas) {
    nautilus.colision(c);
    c.dibujar();
  }
}
