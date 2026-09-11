Jetpack jetpack;

void setup () {
  size (500, 500);
  jetpack = new Jetpack(50, 50, 30, 60);
}

void draw () {
  background(150);
  
  if(keyPressed) {
    if (key == 'a' || key == 'A') {
      jetpack.izquierda();
    }
    
    if (key == 'd' || key == 'D') {
      jetpack.derecha();
    }
    
    if (key == 'P' || key == 'p') {
      jetpack.propulsar();
    }
    
  } else {
      jetpack.actualizar();
   }
  
  jetpack.dibujar();
}

void keyPressed () {
  
}
