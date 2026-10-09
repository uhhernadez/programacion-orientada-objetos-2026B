class Celula  {
  float x, y, radio ;
  color fondo;
  
  Celula (float x, float y, float radio,color fondo) {
    this.x = x;
    this.y = y;
    this.radio = radio;
    this.fondo = fondo;
  }
  
  void dibujar () {
    fill(fondo);
    circle(x, y , 2*radio); 
  }
  
  void actualizar () {
     x = x + random (-2, 2);
     y = y + random (-2, 2);
     revisarLimites();
  }
  
  void revisarLimites () {
     x = (x < 0)? 0: x;
     x = (x > width)? width: x;
     
     y = (y < 0)? 0 : y;
     y = (y > height)? height: y;
  }
  
  boolean colision (Celula c) {
    float d = dist(x, y, c.x, c.y);
    float r = c.radio + radio;
    if ( d < r) {
      // si colisionan
      return true;
    } else {
      return false;
    }
  }
  
}
