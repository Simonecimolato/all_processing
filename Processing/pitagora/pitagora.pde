//Simone Cimolato, 14/12/2017

void setup() {
  size(1000, 1000);
  background(0);
  noLoop();
}

void draw() {
  int x;
  int y;
  
  //grid density
  int lines = 20;
 
  //grid's settings
  strokeWeight(0.4);
  stroke(128,128,0);
  
  //grid
  for(int i = 0; i <= width; i+=(width/lines)) {
      line(i, 0, i, height);
  }
  for(int j = 0; j <= width; j+=(width/lines)) {
      line(0, j, width, j);
  }
  
  //points' settings
  stroke(255);
  strokeWeight(1.5);
  
  //how many points to plot
  int points = 100;
  
  //zooming
  float scale = ((float)points/50.0)*log(points);
  
  for (x = 0; x < points; x++) {
      for (y = 0; y < points; y++) {
          //where the magic happens.
          point((x*x - y*y)/scale, height - (2*x*y)/scale);
      }
  }
}

//screenshot
void mousePressed(){
   save("Output.png");
   println("Screenshot saved.");
}