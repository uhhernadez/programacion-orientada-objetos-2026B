enum TipoAnimacion {
  ESPERA, CAMINAR, CORRER, SALTAR
};

class Personaje {
  boolean mirandoDerecha;
  boolean enSuelo;
  float x, y, vy, ySuelo;
  float gravedad;
  TipoAnimacion actual;
  Animacion espera;
  Animacion caminar;
  Animacion correr;
  Animacion saltar;
  ClipAudio clipSaltar;
  ClipAudio clipPaso;
  Personaje (float x, float y, PApplet app) {
    mirandoDerecha = true;
    enSuelo = true;
    gravedad = 0.6;
    vy = 0;
    this.x = x;
    this.y = y;
    ySuelo = y;
    actual = TipoAnimacion.CAMINAR;
    espera = new Animacion ("dog_cholo", "Idle", 10, x, y);
    caminar = new Animacion ("dog_cholo", "Walk", 10, x, y);
    correr = new Animacion ("dog_cholo", "Run", 8, x, y);
    saltar = new Animacion ("dog_cholo", "Jump", 8, x, y);
    clipSaltar = new ClipAudioSound(app, "salto.wav");
    clipPaso = new ClipAudioSound(app, "paso.wav");
  }

  void mostrar () {
    pushMatrix();
    translate(x, y);
    if (!mirandoDerecha) {
      scale(-1, 1);
    }
    switch(actual) {
    case CAMINAR:
      {
        caminar.mostrar(0, 0);
        caminar.actualizar();
        clipPaso.reproducirEnBlucle();
        break;
      }
    case ESPERA:
      {
        espera.mostrar(0, 0);
        espera.actualizar();
        clipPaso.parar();
        break;
      }
    case CORRER:
      {
        correr.mostrar(0, 0);
        correr.actualizar();
        clipPaso.parar();
        break;
      }
    case SALTAR:
      {
        saltar.mostrar(0, 0);
        saltar.actualizar();
        clipPaso.parar();
      }
    }
    popMatrix();
  }
  void interacion () {
    actual = TipoAnimacion.ESPERA;

    y += vy;
    vy += gravedad;

    if ( y >= ySuelo) {
      y = ySuelo;
      vy = 0;
      enSuelo = true;
    }


    if (teclaEspacio) {
      if (enSuelo) {
        vy = -10;
        enSuelo = false;
        clipSaltar.reproducir();
      }
    }

    if (teclaC && teclaD) {
      actual = TipoAnimacion.CORRER;
      x+=2;
      mirandoDerecha = true;
    } else if (teclaD) {
      actual  = TipoAnimacion.CAMINAR;
      mirandoDerecha = true;
      x++;
    }

    if (teclaC && teclaA) {
      actual = TipoAnimacion.CORRER;
      x-=2;
      mirandoDerecha = false;
    } else if (teclaA) {
      actual  = TipoAnimacion.CAMINAR;
      x--;
      mirandoDerecha = false;
    }

    if (!enSuelo) {
      actual = TipoAnimacion.SALTAR;
    }
    
  }
}
