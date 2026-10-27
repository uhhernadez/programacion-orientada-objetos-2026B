enum TipoAnimacion {ESPERA, CAMINAR, CORRER};

class Personaje {
  float x, y;
  TipoAnimacion actual;
  Animacion espera;  
  Animacion caminar;
  Animacion correr;
  Personaje (float x, float y) {
    this.x = x;
    this.y = y;
    actual = TipoAnimacion.CAMINAR;
    espera = new Animacion ("dog", "Idle", 10, x, y);
    caminar = new Animacion ("dog", "Walk", 10, x, y);
    correr = new Animacion ("dog", "Run", 8, x, y);
  }

  void mostrar () {
    switch(actual) {
      case CAMINAR: {
        caminar.mostrar(x,y);
        caminar.actualizar();
        break;
      }
      case ESPERA: {
        espera.mostrar(x,y);
        espera.actualizar();
        break;
      }
      case CORRER: {
        correr.mostrar(x,y);
        correr.actualizar();
      }
    }
  }
  void interacion () {
    actual = TipoAnimacion.ESPERA;
    
    if (teclaC && teclaD) {
     actual = TipoAnimacion.CORRER;
     x+=2;
    } else if (teclaD){
      actual  = TipoAnimacion.CAMINAR;
     x++;
    }
    
    if (teclaC && teclaA) {
     actual = TipoAnimacion.CORRER;
     x-=2;
    }else if (teclaA){
      actual  = TipoAnimacion.CAMINAR;
     x--;
    }
    
  }
}
