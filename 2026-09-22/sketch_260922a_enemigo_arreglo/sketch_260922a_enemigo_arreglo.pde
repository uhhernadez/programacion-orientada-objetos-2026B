ArrayList<Enemigo> enemigos;

void setup () {
  size (500, 500);
  enemigos = new ArrayList<Enemigo>();
  enemigos.add(new EnemigoNervioso(250, 0));
  enemigos.add(new EnemigoRapido(100, 0));
}

void draw () {
  background(200);
  for (Enemigo e : enemigos) {
    e.dibujar();
    e.mover();
  }
}
