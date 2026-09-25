class EnemigoNervioso extends Enemigo {
  EnemigoNervioso (float x, float y) {
    super(x, y, 0.8, color (255, 0, 200), 8);
  }
  
  void mover () {
    float dx = random(-3, 3);
    x = x + dx;
    y = y + velocidad;
  }
}
