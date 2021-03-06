PImage img;
color c;

MyPoint p;

void setup() {
  size(1024, 576);
  frameRate(60);
  
  img = loadImage("40704.jpg");
  imageMode(CENTER);
  noStroke();
  background(255);
  
  c = color(255, 204, 0); //default color
  p = new MyPoint(10,10,40, c); //creates po
  image(img,width/2,height/2);
}

void draw() { 
  //image(img,width/2,height/2);
  p.move(mouseX,mouseY); //point in mouse position
  color pix = img.get(mouseX, mouseY); //defines color position of mouse using img.get(mouseX, mouseY)
  p.plot(40,pix); //plots with color 
}
