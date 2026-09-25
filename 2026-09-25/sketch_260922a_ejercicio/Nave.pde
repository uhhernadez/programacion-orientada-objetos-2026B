class Nave extends Objeto {
  Nave () {
    super();
  }
  
  Nave (float x, float y, float radio, color fondo) {
    super(x, y, radio, fondo);
  }
  
  void mover (float movimiento) {
    x += movimiento;   
    y = height - radio;
  }
  
  boolean colision (Enemigo c) {
    float d = dist(c.x, c.y, x, y);
    float radioTotal = radio + c.radio;
    return d < radioTotal;
  }
}
