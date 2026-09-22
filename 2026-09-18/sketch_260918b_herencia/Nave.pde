class Nave extends Objeto {
  Nave () {
    super();
  }
  
  Nave (float x, float y, float radio, color fondo) {
    super(x, y, radio, fondo);
  }
  
  void mover (float mouseX, float mouseY) {
    x = mouseX;
    y = mouseY;
  }
  
  boolean colision (Cometa c) {
    float d = dist(c.x, c.y, x, y);
    float radioTotal = radio + c.radio;
    return d < radioTotal;
  }
}
