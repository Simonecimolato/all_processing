float pop = 0.5;  //must be between 0 and 1
float nextPop;
float step;
float lambda = 1.9;
int a = 4;
int b = 2;
String Z = "";

void setup() {
  size(1400, 850);
  background(255);
  noLoop();
  strokeWeight(0.7);
  
  final float dens = 0.6872106;    //(lambda/step)/(height*width);
  step = (lambda/dens)/(height * width);
  
  //use this function to zoom into the chaos zone
  zoom();
  println("Loading...");
}

void draw() {
  for (; lambda <= 4; lambda+=step) { 
    nextPop = lambda * pop * (1 - pop); 
    pop = nextPop;

    point((lambda * width/a - width/2) * b - 5, height - pop * height);
  }
  println("DONE!");
  println(millis()/1000.0 + " seconds.");
}

void mousePressed() {println("lambda value: " + lambda);}

void keyPressed() {
  save("output" + Z + ".tiff");
  println("Screenshot taken!");
}

void zoom() {
  a = 7;
  b = 12;
  final float densZoom = 1.5180267;
  step = (lambda/densZoom)/(height * width);
  lambda = 3.4;
  Z = " zoomed";
}