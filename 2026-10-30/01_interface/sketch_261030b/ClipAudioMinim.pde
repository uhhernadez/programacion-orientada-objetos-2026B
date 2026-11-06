import ddf.minim.*;
class ClipAudioMinim implements ClipAudio {
  AudioPlayer reproductor;
  boolean isPause;
  ClipAudioMinim (Minim minim, String archivo) {
    reproductor = minim.loadFile (archivo);
    isPause = false;
  }
  void reproducir () {
    if (reproductor.isPlaying()) {
      reproductor.pause();
      isPause = true;
    } else if (isPause) {
      reproductor.play();
      isPause = false;
    } else {
      reproductor.rewind();
      reproductor.play();
    }
  }
  void parar () {
    if (reproductor.isPlaying()) {
      reproductor.pause();
      reproductor.rewind();
    }
  }
  void volumen (float volumenNuevo) {
    float gain = (float)Math.log10(volumenNuevo);
    reproductor.setGain(gain);
  }

  void reproducirEnBlucle() {
    reproductor.loop();
  }
  void pausar () {
    if (reproductor.isPlaying()) {
      reproductor.pause();
      isPause = true;
    }
  }
}
