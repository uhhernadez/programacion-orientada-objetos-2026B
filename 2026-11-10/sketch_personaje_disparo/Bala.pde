class Bala {
  float x, y, radio;
  float direccion;
  
  Bala (float x, float y, float direccion, float radio) {
    this.x = x;
    this.y = y;
    this.radio = radio;
    this.direccion = direccion;
  }

  void mostrar() {
    circle (x, y, 2*radio);
  }
  void actualizar () {
    x+= direccion;
  }
}
