int r,g,b;
float x,y;
float x2,y2;
float x3,y3;
float x4,y4;
float x5,y5;
float radius;
float speed;
float size;


void setup(){
  size(400,400);
// background(255);size(400,400);
x = width/2;
y = height/2;

radius=20;
speed= 0.5;
size=width/4;

}

void draw(){

fill(0,10);
rect(0,0,400,400);
noStroke();
 r=200;
 g=92;
 b=0;
if (mousePressed == false){
  fill(r,g,b);
  x = frameCount % width;
  y = height/2 + sin(frameCount * speed)* size;
  ellipse(x,y,radius,radius);


  fill(255,255,0);
  x2= frameCount % width;
  y2=height/2 + cos(frameCount*speed)*size;
  ellipse(x2,y2,radius,radius);
}

else {
  fill(50,100,200);
int time = millis();

x3 = width/2 + sin(time*speed)*size;
y3=width/2 +cos(time*speed)*size;
ellipse(x3,y3,radius,radius);

fill(r,g,b);
x4 = height/2 + sin(frameCount * speed)* size;
y4 = frameCount % width;

ellipse(x,y,radius,radius);

}

fill(255,255,0);
x5= height/2 + cos(frameCount*speed)*size;
y5=frameCount % width;

ellipse(x2,y2,radius,radius);







