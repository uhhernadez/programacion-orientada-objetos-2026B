Minim minim;
ClipAudio clip;
ClipAudioMinim clipMinim;
ClipAudioSound clipSound;
void setup () {
  minim = new Minim(this);
  //clip = new ClipAudioMinim(minim, "quack.wav");
  clip = new ClipAudioSound(this, "gigantedehierro.mp3");
  clip.reproducir();
}
void draw () {
}
void keyPressed() {
  if (key == 'r' || key == 'R') {
    clip.reproducir();
  } 
  if (key == 'p' || key == 'P') {
    clip.parar();
  }
}
