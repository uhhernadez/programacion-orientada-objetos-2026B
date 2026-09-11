class Nave {
  float x;
  float y;
  float radio;
  
  Nave (float mouseX, float mouseY) {
    x = mouseX;
    y = mouseY;
    radio = 5;
  }

  void dibujar () {
    circle (x, y, 2*radio);
  }

  void mover (int mouseX, int mouseY) {
    x = mouseX;
    y = mouseY;
  }

}
