class Animacion {
  int indice;
  boolean repetir;
  boolean estaReproduciendo;
  ArrayList<Imagen> secuencia;
  Animacion (String carpeta, String tipo, int N, float x, float y) {
    repetir = true;
    estaReproduciendo = true;
    indice = 0;
    secuencia = new ArrayList<Imagen>();
    for (int i = 1; i <= N; i++) {
      String ruta = carpeta + "/" + tipo + "_" + str(i) + ".png";
      secuencia.add(new Imagen(ruta, round(x), round(y),0.4 ));
    }
  }
  void mostrar (float x, float y) {
      if (indice >= 0) {
        Imagen img = secuencia.get(indice); 
        img.x = x;
        img.y = y;
        img.mostrar();
      }
    
  }
  void actualizar () {
    if (indice == -1 ){
      return ;
    }
    if (frameCount % 4 == 0) {
      indice ++;
    }
    if (!repetir) {
      if (indice == secuencia.size()) {
        indice = -1;
        estaReproduciendo = false;
        return;
      }
    }
    
    indice = indice % secuencia.size();
  }
  void reproducirUnaVez () {
    indice = 0;
    repetir = false;
    estaReproduciendo =true;
  }
}
