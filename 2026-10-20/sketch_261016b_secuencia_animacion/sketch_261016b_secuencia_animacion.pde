ArrayList<Imagen> inmovil;
void setup () {
  size(500, 500);
  inmovil = new ArrayList<Imagen> ();
  for (int i = 1; i <= 10; i++) {
    String ruta = "dog/Idle_" + str(i) + ".png";
    inmovil.add(new Imagen(ruta, 100, 100, 0.4));
  }
}
int i = 0;
void draw () {
  background(124);
  inmovil.get(i % 10).mostrar();
  if (frameCount % 4 == 0) { 
    i++;
  }
}
