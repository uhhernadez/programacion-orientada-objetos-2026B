Jetpack jetpack;

void setup () {
  size (500, 500);
  jetpack = new Jetpack(50, 50, 30, 60);
}

void draw () {
  background(150);
  
  if(keyPressed) {
    jetpack.propulsar();
  } else {
    jetpack.actualizar();
  }
  jetpack.dibujar();
}

void keyPressed () {
  
}
