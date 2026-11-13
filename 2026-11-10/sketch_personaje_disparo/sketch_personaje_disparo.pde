boolean teclaA = false;
boolean teclaD = false;
boolean teclaC = false;
boolean teclaE = false;
boolean teclaEspacio = false;

Personaje dog;
Imagen fondo;
ClipAudio musicaFondo;
ArrayList<Bala> balas;

void setup () {
  size(500, 300, P2D);
  dog = new Personaje (200, 200, this);
  fondo = new Imagen("fondo.jpg", 0, 0, 0.3);
  musicaFondo= new ClipAudioSound(this,"low_rider.mp3");
  musicaFondo.reproducirEnBlucle();
  musicaFondo.volumen(0.2);
  balas = new ArrayList<Bala>();
}
void draw () {
  background(125);  
  fondo.mostrarEquina();
  dog.interacion();
  dog.mostrar();
  for (Bala bala: balas) {
    bala.mostrar();
    bala.actualizar();
  }
}
void mousePressed() {
  float direccion;
  if (mouseX > width/2) {
    direccion = 2;
  } else {
    direccion = -1;
  }
  balas.add(new Bala(width/2, height/2, direccion, 4));
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
    teclaA = true;
  }
  if (key == 'd' || key == 'D') {
    teclaD = true;
  }
  if (key == 'c' || key == 'C') {
    teclaC = true;
  }
  if (key == 'e' || key == 'E') {
    teclaE = true;
  }
  
  if (key == ' ') {
    teclaEspacio = true;
  }
}

void keyReleased() {
  if (key == 'a' || key == 'A') {
    teclaA = false;
  }
  if (key == 'd' || key == 'D') {
    teclaD = false;
  }
  if (key == 'c' || key == 'C') {
    teclaC = false;
  }
    if (key == 'e' || key == 'E') {
    teclaE = false;
  }
  if (key == ' ') {
    teclaEspacio = false;
  }
}
