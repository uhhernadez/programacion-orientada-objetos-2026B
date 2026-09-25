class Enemigo {
  float x;
  float y;
  float velocidad;
  float colorEntidad;
  float radio;
  
  Enemigo (float x, float y, float v, color c, float r) {
    this.x = x;
    this.y = y;
    this.velocidad = v;
    this.colorEntidad = c;
    this.radio = r;
  }
  
  void mover () {
    y = y + velocidad;
  }
  
  void dibujar () {
    fill(colorEntidad);
    circle(x, y, 2*radio);
    
    if (y > height) {
      y = 0;
      x = random(0, width);
    }
  }
  

}
