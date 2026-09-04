class Cuadrado {
  // atributos
  float x; 
  float y;
  float lado;
  color relleno;
  // constructores
  Cuadrado () {
    x = 100;
    y = 100;
    lado = 20;
    relleno = color (255, 0, 0);
  }
  
  Cuadrado (float _x, float _y, float _lado, color _relleno) {
    x = _x;
    y = _y;
    lado = _lado;
    relleno = _relleno;
  }
  
  // métodos
  void Dibujar () {
    fill (relleno);
    rect(x, y, lado, lado);
  }
  
  void MoverAleatorio() {
    x += random(-2, 2);
    y += random(-2, 2);
  }
  
  void MoverGaussiano() {
    x += randomGaussian();
    y += randomGaussian();
  }
  
  void MoverPerlin () {
    float t = millis () / 1000.0 + random(0, 100);
    x += 2 * noise (t) - 1;
    y += 2 * noise (t+10000) -1;
  }
  
  
}
