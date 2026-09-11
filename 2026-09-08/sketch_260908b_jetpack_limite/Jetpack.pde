class Jetpack {
  float x;
  float y;
  float ancho;
  float alto;
  float g;

  Jetpack (float x, float y, float ancho, float alto) {
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.alto  = alto;
    g = 1;
  }
  
  void dibujar () {
    rect(x , y, ancho, alto);
  }
  
  void actualizar () {
    y = y + g;
    y = ((y + alto) > height)? height - alto: y;
  }
  
  void propulsar () {
    y = y - 10;
  }
  
  void derecha () {
    x = x + 1;
  }
  
  void izquierda() {
    x = x - 1;
  }

}
