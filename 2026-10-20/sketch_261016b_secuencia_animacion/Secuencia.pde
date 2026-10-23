class Animacion {
  int indice;
  ArrayList<Imagen> secuencia;
  Animacion (String carpeta, String tipo, int N, int x, int y) {
    indice = 0;
    secuencia = new ArrayList<Imagen>();
    for (int i = 1; i <= N; i++) {
      String ruta = carpeta + "/" + tipo + "_" + str(i) + ".png";
      secuencia.add(new Imagen(ruta, x, y,0.4 ));
    }
  }
  void mostrar () {
    secuencia.get(indice).mostrar();
  }
  void actualizar () {
    if (frameCount % 4 == 0) {
      indice ++;
    }
    indice = indice % secuencia.size();
  }
}
