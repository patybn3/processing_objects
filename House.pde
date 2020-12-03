//class House
class House {

  /*Custom function displayHouses, calls for params space for the space
  between the houses, h1 and h2 for the random location of y*/
  void displayHouses(float space, float h1, float h2) {
    //variable x for the random location of x, between 0 and 30px
    float x =  random(0, 30);
    
    /*while loop will loop the variable x, as long as it is less than the 
    width of the page*/
    while(x < width) {
    //variable y selects the random location of y 
    float y =  random(h1, h2);
    //variables w selects the random height and width
    float w =  random(50, 100);
    
    //adds a border to the shape of the color black
    stroke(0);
    //gives it a thickness of 3px
    strokeWeight(3);
    //draws the first houses in the color white
    fill(255);
    //draws it at the values of x and y and uses variable w for the HxW
    rect(x, y, w, w);
    //draws the houses again in a random color and give it transparency
    fill(random(255), random(255), random(255), 130);  
    rect(x, y, w, w);
     
    //roof
    //selects a random color, no green
    fill(random(155), random(0), random(155));  
    //draw triangles as the roof for the houses
    triangle(x-20, y, x+w+20, y-0, x+w/2, y-30);
    
    //house's windows, set the initial value of variable x1
    int x1=0;
      //loop x1, while it is less than the value of variable w-17
      while (x1 < w-17) {
        //removed the border
        noStroke();
        //selects the color black
          fill(0); 
          //draws the first set of windows on the x axis
            rect(x+x1+5, y+5, 15, 20);
            //draws the second set of windows on the x axis
          rect(x+x1+5, y+30, 15, 20);
          //adds 20px to x1
        x1+=20;
      }
    // adds the value of space to x
    x+=space;
    
   }    
  }
}

//next tab.
