String[] constant;
float lato;
int x = 1;
int y = 1;
int digits;

void setup() {
  size(1300, 772);      //width and height
  noLoop();
  surface.setResizable(true);
  constant = loadStrings("pi 1M.txt");         //you can do this with any txt that is containig numbers.
  
  //the nested for loops way to count the digits is more accurate
  for (int k = 0; k < constant.length; k++) {
    for (int w = 0; w < constant[k].length(); w++) {
          digits++;
        }
    }
  //digits = constant[10].length() * constant.length;   //you can do this if the number of digits is the same for each line
  
  lato = sqrt((width*height)/digits);   //this will automatically calculate the size of the squares
}

//screenshot
void draw() {
  for (int i = 0; i < constant.length; i++) {
      //println(constant[i]);
      char[] charsArray = new char[constant[i].length()];

      for (int j = 0; j < constant[i].length(); j++) {
        charsArray[j] = constant[i].charAt(j);
        
        //from char to int
        int current = int(charsArray[j]);        
        current -= 48;
        //println(charsArray[j])
        
        //mapping the color to use and coloring
        color col = int(map(current, 0, 9, 255, 0));
        fill(col);
        //println(lato);
        
        //drawing
        noStroke();
        rect(x, y, lato, lato);
        x+= lato;
        if (x >= width - lato) {
          y+= lato;
          x = 1;
        }
      }
    }
    int size = ceil(sqrt(digits)*lato) + 2;
    println("Best window size using "+ lato + "*" + lato + " squares and " + digits + " digits: " + size + " * " + size);
    println("Click to take a screenshot!");
}

void mousePressed(){
  save("output.tiff");
  println("screenshot saved!");
}