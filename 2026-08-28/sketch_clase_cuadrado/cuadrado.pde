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
}
