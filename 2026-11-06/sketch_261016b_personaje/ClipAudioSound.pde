import processing.sound.*;
class ClipAudioSound implements ClipAudio {
  SoundFile file;
  ClipAudioSound (PApplet app, String ruta) {
    file = new SoundFile(app, ruta);
  }
  void reproducir () {
    file.play();
  }
  void parar () {
    file.stop();
  }
  void volumen (float volumenNuevo) {
    if (volumenNuevo < 0.0 || volumenNuevo > 1.0) {
      return ; 
    }
    file.amp(volumenNuevo);
  }
  void reproducirEnBlucle() {
    file.loop();
  }
  void pausar () {
    file.pause();
  }
}
