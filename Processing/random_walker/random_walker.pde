PVector pos = new PVector(0,0);
PVector old;
float hue;
int sens = 7;

void setup() {
 size(1280, 720);
 background(51);
 colorMode(HSB);
 pos.x = width/2;
 pos.y = height/2;
}

void draw() {
  int direction = floor(random(4));
  old = pos.copy();

  switch (direction) {
    case 0:
      pos.x += sens;
      break;
    case 1:
      pos.x -= sens;
      break;
    case 2:
      pos.y += sens;
      break;
    case 3:
      pos.y -= sens;
      break;
  }
  if (pos.x > width || pos.x < 0 || pos.y > height || pos.y < 0) {
    pos.x = random(width/2);
    pos.y = random(height/2);
  }
  stroke(hue,255,255);
  hue+=0.1;
  if (hue>360) hue = 0;
  line(old.x, old.y, pos.x, pos.y);
}