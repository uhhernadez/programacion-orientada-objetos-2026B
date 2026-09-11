Zombie zombistein;
Zombie alpha;
void setup () {
  size (500, 500);
  zombistein = new Zombie(width, height, 0.5);
  alpha = new Zombie(width, height, 2.0);
}

void draw () {
  background(125);
  zombistein.dibujar();
  zombistein.perseguir(mouseX, mouseY);
  alpha.dibujar();
  alpha.perseguir(mouseX, mouseY);
}
