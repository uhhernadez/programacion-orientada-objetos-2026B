class CelulaSana extends Celula {
  float theta;
  CelulaSana (float x, float y) {
    super(x, y, 10, color (0, 240, 0));
    theta = random (-PI, PI);
    println(degrees(theta));
  }
  
  void actualizar () {
    float delta = 2;
    x = x + delta * cos (theta);
    y = y + delta * sin (theta);
    
    if (x - radio < 0 || x + radio > width) {
      theta = PI - theta;
    }
    
    if (y - radio < 0 || y + radio > height) {
      theta = -theta;
    }
    
  }
}
