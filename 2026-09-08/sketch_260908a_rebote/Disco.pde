class Disco {
  float x, y;
  float vx;
  float vi;
  float d;
  
  Disco (float x, float y, float vi) {
    this.x = x;
    this.y = y;
    this.vi = vi;
    vx = 0.0;
    d = 8;
  }
  
  void actualizar () {
    x = x + vx;
    vx = 0.98 * vx;
    println(x + " " + width + " " + vx);
    if (x >= width) {
      x = width;
      vx = -vx;
    } else if ( x <= 0.0) {
      vx = -vx;
    }
  }
 
  void golpear () {
    if (vx > 0.0) {
      vx = vi;
    } else {
      vx = -vi;
    }
  }
  
  void dibujar () {
    fill(0);
    circle(x, y, d);
  } 
}
