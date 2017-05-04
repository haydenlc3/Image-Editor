PImage img;
String link = "superman.png";
float angle = 0;
float stretch = 1;
boolean filter = false;

void setup(){
  size(500, 500);
  background(255);
  img = loadImage(link);
}

void draw(){
  background(255);
  rotate(radians(angle));
  scale(stretch);
  image(img, width/2-(img.width/2), height/2-(img.height/2));
  if (filter){
    filter(THRESHOLD);
  }
}

void keyPressed() {
    if (key == CODED) {
      if (keyCode == LEFT) {
        angle -= 1;
      } else if (keyCode == RIGHT) {
        angle += 1;
      } else if (keyCode == UP){
        stretch += 1;
      } else if (keyCode == DOWN){
        stretch -= 1;
      }
    } else {
      if (key == 'r'){
        tint(255, 0, 0);
      } else if (key == 'g'){
        tint(0, 255, 0);
      } else if (key == 'b'){
        tint(0, 0, 255);
      } else if (key == 'x'){
        if (filter) {
          filter = false;
        } else {
          filter = true;
        }
      }
    }
}