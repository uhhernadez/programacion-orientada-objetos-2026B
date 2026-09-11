class Circulo  {
  float x;
  float y;
  float l;
  float vy;
  
  Circulo () {
    x = 10;
    y = 10;
    l = 20;
    vy = 0.1;
  }

  void actualizar () {
    y = y + vy;
  }
  
  void dibujar () {
    fill (180);
    circle(x, y, l);
  }
}
