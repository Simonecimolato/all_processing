int iterations = 1000;
int limit = 2;

void setup(){
  size(1300,800);
  background(0);
  noLoop();
  stroke(255);
}

void draw(){
  for (float j = 0; j <= limit; j += 0.001){
    point(map(j,0,limit,10,width-10),zeta(j));
  }
}

float zeta(float s){
 float sum = 0;
 
  for (int i = 1; i <= iterations; i++)  
    sum += 1/(pow(i,s)); 
    
  return sum;
}
