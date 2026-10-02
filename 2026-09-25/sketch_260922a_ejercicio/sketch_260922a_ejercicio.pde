ArrayList<Enemigo> enemigos;
Nave nave;
Reloj reloj;
void setup () {
  size (500, 500);
  enemigos = new ArrayList<Enemigo>();
  reloj = new Reloj();
  enemigos.add(new EnemigoNervioso(250, 0));
  enemigos.add(new EnemigoRapido(100, 0));
  nave = new Nave(width/2, height -10,10, color(125, 10, 100));
  reloj.inicio();
}

void draw () {
  background(200);
  
  nave.dibujar();
  if(keyPressed) {
    if (key == 'a' || key == 'A') {
      nave.mover(-5);
    }
    if (key == 'd' || key == 'D') {
      nave.mover(5);
    }
  }
  for (int i = enemigos.size() - 1; i >= 0; i--) {
    Enemigo e = enemigos.get(i);
    e.dibujar();
    e.mover();
    
    if( nave.colision(e) ){
      enemigos.remove(i);
      if (enemigos.size() == 0) {
        reloj.terminacion();
      }
    }
  } 
  
  if (enemigos.size() == 0) {
    reloj.tiempoTotal();
  } else {
    reloj.dibujar();
  }
  
}
