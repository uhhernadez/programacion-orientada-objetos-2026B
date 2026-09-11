class Zombie {
  float x; 
  float y;
  float r;
  float vel;
  
  Zombie(int width, int height, float vel) {
    x = random(0, width);
    y = random(0, height);
    this.vel = vel;
    r = 10;
  }
  
  void dibujar () {
    circle(x, y, 2*r);
  }
  
  void perseguir (float objetivoX, float objetivoY) {
    if (x <= objetivoX) {
      x += vel;
    } else {
      x = x - vel;
    }
    
    if (y <= objetivoY) {
      y += vel;
    } else {
      y-= vel;
    }
    
  }
  
  
}
