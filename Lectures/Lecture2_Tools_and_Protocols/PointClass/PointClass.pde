
float offset = 5;
color c;

MyPoint p1; //declare objects
MyPoint p2;

void setup(){
  size(800,800);
  background(255,255,255);
  frameRate(10);
  c = color(255, 204, 0); //default color
  p1 = new MyPoint(10,10,10, c); //create object "call constructor"
  p1.plot(); //plots it
}


void draw(){ 
  p1.move(offset,offset+1); //moves with x offset and yoffset declared 
  p1.plot(); //plots
}
