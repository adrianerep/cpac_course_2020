PImage img;

void setup() {
  size(1024, 576);
  frameRate(60);
  
  img = loadImage("40704.jpg");
  imageMode(CENTER); //makes coordinates center 
  noStroke();
  background(255); //grey scale
}

void draw() { 
  image(img,width/2,height/2); //image that you loaded called img and where (center canvas)
}
