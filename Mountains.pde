//class Mountains
class Mountains {
  //selects the color brown and adds it to variable b
  color b = color(84, 36, 2);
  /*Custom Function displayMountains will draw mountains on the screen. It
  calls for param y1 for the location of the fist and last y for the triangle,
  param y2 and y3 for the range of random numbers for the location of y2
  on the triangle and param space for the space between the "mountains"*/
  void displayMountains(int y1, int y2, int y3, int space) {
    //gives x and initial value of -150
    int x = -150;
    //do these commands
    do {
      //variable y, pass param y2 an dy3
    float y =  random(y2, y3);
    //adds a border of color black
    stroke(0);
    //fill the shapes with the color b
    fill(b);
    //draw triangle
    triangle(x, y1, x+300, y, x+500, y1);
    
    //add the value of space to x
    x+=space;
    } while (x < width); // do this while x is less then the width of the page
  
  }
}

//end.
