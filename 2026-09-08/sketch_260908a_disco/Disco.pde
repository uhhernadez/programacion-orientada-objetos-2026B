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
    if (vx <= 0.0) {
      return ;
    }
    x = x + vx;
    vx = 0.98 * vx;
    print("Velocidad en x: " + str(vx));
  }
 
  void golpear () {
    vx = vi;
  }
  
  void dibujar () {
    fill(0);
    circle(x, y, d);
  } 
}
