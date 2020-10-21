import processing.video.*; //allows import any import of java compatible library 

Capture cam; //capture object

void setup() {
  size(640, 480);

  String[] cameras = Capture.list(); //list of cameras available
  
  if (cameras.length == 0) { //check if available
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]); //define new camera, construct new object
    cam.start();     
  }      
}

void draw() {
  if (cam.available() == true) {
    cam.read();  //when new frame available read 
  }
  image(cam, 0, 0); //print like an image (you can process like an image! fuck up the camera!)
  // The following does the same, and is faster when just drawing the image
  // without any additional resizing, transformations, or tint.
  //set(0, 0, cam);
}
