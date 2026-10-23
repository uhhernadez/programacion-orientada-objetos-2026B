PImage img;
void setup () {
  size (500, 500);
  img = createImage(400, 400, RGB);
  imgAleatoria(img);
  
}

void imgAleatoria (PImage img) {
  img.loadPixels();
  for (int j = 0; j < img.pixels.length ; j++) {
    int r = round(random (0, 255));
    int g = round(random (0, 255));
    int b = round(random (0, 255));
    img.pixels[j] = color(r, g, b);
  }
  img.updatePixels();
}


void draw () {
  image (img, 50, 50);
}
