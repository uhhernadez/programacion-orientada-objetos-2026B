Circulo circulo;
void setup () {
  size (500, 500);
  circulo = new Circulo ();
}

void draw () {
  circulo.actualizar();
  circulo.dibujar();
}
