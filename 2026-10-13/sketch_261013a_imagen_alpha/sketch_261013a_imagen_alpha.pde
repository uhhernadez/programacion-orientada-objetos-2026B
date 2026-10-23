PImage img;
PImage imgAlpha;
void setup () {
  size (500, 500);
  img = createImage(400, 400, RGB);
  imgAlpha = createImage(400, 400, ARGB);
  imgAlpha.loadPixels();
  for (int i = 0; i < img.pixels.length; i++) {
    imgAlpha.pixels[i] = color(0, 0, 255, 100);
  }
  imgAlpha.updatePixels();
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
  imgAleatoria(img);
}
