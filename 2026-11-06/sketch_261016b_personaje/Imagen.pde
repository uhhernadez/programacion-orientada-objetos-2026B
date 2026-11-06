class Imagen {
  PImage img;
  float escala;
  float x, y;
  
  Imagen (String ruta, int x, int y, float escala) {
    img = loadImage(ruta);
    this.x = x;
    this.y = y;
    this.escala = escala;
    int alto = round(img.height * escala);
    int ancho = round(img.width * escala);
    img.resize(alto, ancho);
  }
  void mostrar () {
    imageMode(CENTER);
    image(img, x, y);
    imageMode(CORNER);
  }
  
  void mostrarEquina () {
    imageMode(CORNER);
    image(img, x, y);
  }
}
