class Cometa {
  float x;
  float y;
  float radio;
  boolean colisiono;
  
  Cometa (int width, int height) {
    x = random(0, width);
    y = random(0, height);
    radio = 10;
    colisiono = false;
  }
  
  void dibujar () {
    if (colisiono) {
      return ;
    }
    circle(x, y, 2*radio);
  }

}
