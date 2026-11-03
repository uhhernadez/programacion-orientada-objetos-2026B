Minim minim;
ClipAudioMinim clipMinim;
void setup () {
  minim = new Minim(this);
  clipMinim = new ClipAudioMinim(minim, "gigantedehierro.mp3");
  clipMinim.volumen(2);
}

void draw () {

}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    clipMinim.reproducir();
  }
  
  if (key == 'p' || key == 'P') {
    clipMinim.parar();
  }
  
}
