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
  
  Circulo (float x, float y) {
    this.x = x;
    this.y = y;
    vy = random(1, 10);
    l = random(10, 20);
  }

  void actualizar () {
    y = y + vy;
    
    if (y >= height && vy > 0) {
      vy = -vy;
    }
    
    if (y <= 0 && vy < 0) {
      vy = -vy;
    }
    
  }
  
  void dibujar () {
    fill (180);
    circle(x, y, l);
  }
}
