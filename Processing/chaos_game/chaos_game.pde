void setup() {
  size(1280, 720);
  background(31);
  stroke(color(255, 100));
  smooth();
  stroke(255, 0, 0);
  strokeWeight(10);
  point(width/2, 0);
  point(3, height - 3);
  point(width - 3, height - 3);
  stroke(255);
  strokeWeight(1);
}

int Dx = 0;
int Dy = height;
int count;

void draw() {
  for (int i = 0; i < 1000; i++){
    switch(int(random(3))){
    case 0:
      Dx = (0+Dx)/2;
      Dy = (height+Dy)/2;
      break;
    case 1:
      Dx = (width+Dx)/2;
      Dy = (height+Dy)/2;
      break;      
    case 2:
      Dx = (width/2+Dx)/2;
      Dy = (0+Dy)/2;
      break;
    }
    point(Dx, Dy);
    count++;
  }
  if (count/height >= 1000) {
     println("DONE");
     noLoop();
  }
}

void mousePressed(){println(count);}