PImage myImage;
PImage backgroundImage;
float r;
float g;
float b;
PFont font;


void setup(){
  size(400,400);
  myImage = loadImage("Puppy_2.jpg");
  backgroundImage = loadImage ("matrix.jpg");
  font = loadFont("GoudyStout-48.vlw");
  textFont(font,50);
  background(0,0,0);
  smooth();
}

void draw(){
   noStroke();
  imageMode(CORNERS);

  
  int x = int(random(myImage.width));
  int y = int(random(myImage.height));
  loadPixels();
  int location =x+y*myImage.width;
  r = red(myImage.pixels[location]);
  g = green(myImage.pixels[location]);
  b = blue(myImage.pixels[location]);
  fill(r,g,b, 100);
  ellipse(x,y,10,10);
  text("code",25,100);
if (mousePressed == true){
  imageMode(CORNERS);
  image(backgroundImage,0,0,400,400); 
  }  
  
  if (keyPressed){
  if(key == 'a'){
  saveFrame();
  }
  }
}




  
