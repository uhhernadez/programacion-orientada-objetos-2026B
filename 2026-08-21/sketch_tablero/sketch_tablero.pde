int lado;
void setup () {
  size (512, 512);
  lado = 10;
}

void dibujarTableroAjedrez() {  
  for (int i = 0; i < 8; i++) {
    boolean bandera;
    bandera = (i % 2 == 0)? true: false;
    
    for (int j = 0; j < 8; j++) {
      if (bandera) {
        fill(0);
      } else {
        fill(255);
      }
      rect(10*i, 10*j, lado, lado);
      //bandera = !bandera;
      bandera = (bandera)? false: true;
    }
  }
}


void draw () {
  
  
}
