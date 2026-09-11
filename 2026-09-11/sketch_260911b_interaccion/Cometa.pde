class Cometa {
  float x;
  float y;
  float radio;
  
  Cometa (int width, int height) {
    x = random(0, width);
    y = random(0, height);
    radio = 10;
  }
  
  void dibujar () {
    circle(x, y, 2*radio);
  }

}
