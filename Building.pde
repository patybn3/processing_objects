//class Building 
class Building {
  //picks the color green and adds to variable "green"
  color green = color(0, 140, 44);

  /*custom fucntion displayBuildings, calls for param space which is the
  space between the buildings*/
  void displayBuildings(float space) {
    //sets the value of x to 0
    int x = 0;
    //remove the shape's stroke
    noStroke();
    //fills the future shape with the value of variable green
    fill(green);
    /*draw rectangle at the value of x, y=350, and make it as wide as the
    page and as tall*/
    rect(x, height/2+50, width, height);
    
    /*for loop, takes variable x, loops x as long as it is less then the 
    width of the page, and adds the param space to x*/
    for(x++; x < width; x+=space){
     /*variables y will select a random number between 100-190 as the position
     of the objects on the y axis*/
    float y =  random(100, 190);
    /*variables w will select a random number between 70-100 as the width
    of the objects*/
    float w =  random(70, 100);
    /*variables t will select a random number between 240-290 as the height
    of the objects*/
    float t =  random(240, 290);
     
    //the next 3 funtions draw the gray shadow on the buildings.
    //fill it with a shade of gray
    fill(150);
    /*draw the rect at x+20 to move it 20px to the side, y-10 to move up
    10px on the y axis and use variables w and t to select a random
    height and width for the  object*/
    rect(x+20, y-10, w, t);
    /*draws a triangle to the corner of the buildings to give it an shadow
    impression */
    triangle(x+20, y, x, y, x+20, y-10);
    
    //These two functions create all the buildings on the page
    //fill the building with a random color, skipping greens
    fill(random(255), random(0), random(255));  
    /*draw the rectangle at point x, the value of variable y (random),
    the value of w and t as width and height (random)*/
    rect(x, y, w, t);
    
      //For loop to draw building windows
      //selects a value for variable y1
      int y1=40;
      /*for loop, will loop variable y1 as long as it is less than the value
      of variable t and add 20px to y1*/
      for(y1++; y1<t; y1+=20){
        //draws windows in the color white first
        fill(255);
        /*draw it at x, where the buildings start adding 5 to x, the value of
        y and y1 down 20px and make it as wide as the building -10 px*/
        rect(x+5, y+y1-20, w-10, 10);
        /*draws the next windows on top of the previous one, adding transparency
        to the color*/
        fill(random(255), random(255), random(0), 100);  
        //draw new rectangles at the same position
        rect(x+5, y+y1-20, w-10, 10);
      }
    }
  }
}

//next tab.
