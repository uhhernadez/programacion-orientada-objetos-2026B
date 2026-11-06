enum TipoAnimacion {ESPERA, CAMINAR, CORRER, SALTAR};

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
  Personaje (float x, float y) {
    mirandoDerecha = true;
    enSuelo = true;
    gravedad = 0.6;
    vy = 0;
    this.x = x;
    this.y = y;
    ySuelo = y;
    actual = TipoAnimacion.CAMINAR;
    espera = new Animacion ("dog", "Idle", 10, x, y);
    caminar = new Animacion ("dog", "Walk", 10, x, y);
    correr = new Animacion ("dog", "Run", 8, x, y);
    saltar = new Animacion ("dog", "Jump", 8, x, y);
  }

  void mostrar () {
    pushMatrix();
    translate(x,y);
    if(!mirandoDerecha) {
      scale(-1,1);
    }
    switch(actual) {
      case CAMINAR: {
        caminar.mostrar(0,0);
        caminar.actualizar();
        break;
      }
      case ESPERA: {
        espera.mostrar(0,0);
        espera.actualizar();
        break;
      }
      case CORRER: {
        correr.mostrar(0,0);
        correr.actualizar();
      }
      case SALTAR: {
        saltar.mostrar(0, 0);
        saltar.actualizar();
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
    
     if (keyPressed) {
      if (key == ' '){
        if (enSuelo) {
          vy = -10; 
          enSuelo = false;
        }
      }
    }
    
    if (teclaC && teclaD) {
     actual = TipoAnimacion.CORRER;
     x+=2;
     mirandoDerecha = true;
    } else if (teclaD){
      actual  = TipoAnimacion.CAMINAR;
      mirandoDerecha = true;
      x++;
    }
    
    if (teclaC && teclaA) {
     actual = TipoAnimacion.CORRER;
     x-=2;
     mirandoDerecha = false;
    }else if (teclaA){
      actual  = TipoAnimacion.CAMINAR;
      x--;
       mirandoDerecha = false;
    }
    
    if (!enSuelo) {
      actual = TipoAnimacion.SALTAR;
    }
    
  }
}
