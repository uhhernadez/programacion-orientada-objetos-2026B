Circulo circulo;
ArrayList<Circulo> circulos;

void setup () {
  size (500, 500);
  circulo = new Circulo (40, 40);
  circulos = new ArrayList<Circulo>();
}

void draw () {
  background(150);
  for (Circulo c:circulos) {
    c.actualizar();
    c.dibujar();
  }
}

void mouseClicked () {
  circulos.add(new Circulo(mouseX, mouseY));
}
