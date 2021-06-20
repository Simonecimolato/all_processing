void setup() {
   size(1280, 720); 
   frameRate(5);
}

void draw() {
background(0);
stroke(255);
strokeWeight(2);
noFill();
beginShape();

int maxPoints = round(random(30));
for (int i = 0; i <= maxPoints; i++) vertex(floor(random(1280)), floor(random(720)));
endShape(CLOSE);
}