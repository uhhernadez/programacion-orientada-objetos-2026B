class CelulaInfectada extends Celula {
  CelulaInfectada (float x, float y) {
    super (x, y, 12, color (200, 0, 0));
  }
  
  void actualizar (Celula c) {
    float dx = c.x - x;
    float dy = c.y - y;
    
    x += dx / 20;
    y += dy / 20;
  }
}
