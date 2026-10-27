class Animacion {
  int indice;
  ArrayList<Imagen> secuencia;
  Animacion (String carpeta, String tipo, int N, float x, float y) {
    indice = 0;
    secuencia = new ArrayList<Imagen>();
    for (int i = 1; i <= N; i++) {
      String ruta = carpeta + "/" + tipo + "_" + str(i) + ".png";
      secuencia.add(new Imagen(ruta, round(x), round(y),0.4 ));
    }
  }
  void mostrar (float x, float y) {
    Imagen img = secuencia.get(indice); 
    img.x = x;
    img.y = y;
    img.mostrar();
  }
  void actualizar () {
    if (frameCount % 4 == 0) {
      indice ++;
    }
    indice = indice % secuencia.size();
  }
}
