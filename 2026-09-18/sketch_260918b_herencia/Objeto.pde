class Objeto {
  float x;
  float y;
  float radio;
  color fondo;
  
  Objeto () {
    x = 10;
    y = 20;
    radio = 10;
    fondo = color (125, 0, 123);
  }
  
  Objeto (float x, float y, float radio, color fondo) {
    this.x = x;
    this.y = y;
    this.radio = radio;
    this.fondo = fondo;
  }
  
  void dibujar () {
    fill(fondo);
    circle (x, y, 2*radio);
  }
}
