/* Assigment 11
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
25 November 2020 

11 - Write a program to demonstrate the understanding and use of objects

This program runs at clicking the start bottom. At click of the mouse the 
objects on the page should change location.

The classes on this program are present on the tabs called Building, House
and Mountains.

The work I am submitting is my own in its entirety

*/

/*variables r and s pick a random number from 100-170 and 70-90 to serve as 
the space between objects to be draw on the screen*/
float r =  random(100, 170);
float s =  random(70, 90);

//variable sky selects a color for the background
color sky = color(209, 247, 255);

// calls class Building (on next tab) and select variable b
Building b;
// calls class House (following tab) and select variable h
House h;
// calls class Mountains (following tap) and select variable m
Mountains m;

//Built-in function setup contain the settings to run this program
void setup(){
  //creates a screen sized 600px by  600px
  size(600, 600);
  //calls variable b and creates a new object for class Building
  b = new Building();
  //calls variable h and creates a new object for class House
  h = new House();
  //calls variable m and creates a new object for class Mountain
  m = new Mountains();

}
//Built-in function draw contain the commands to be displayed on the screen
void draw() {
  //given a background of the value of variable sky
  background(sky);
  /*calls object m and custom function displayMountais 
  it draws triangles on the page to resemble mountains, first argument is 
  the value of y1 and y3 on the triangle function, second and third
  argument is the range of random  numbers for y2 on the triangle and the
  last argument is the space between the mountains.*/
  m.displayMountains(350, 50, 200, 200);
  
  /*calls object h and custom function displayHouses. The first argument
  called is the space between the houses, which is set to variable s and 
  random, second argument is the random range for y in a rectangle, allowing
  the house to be displayed at different heights (in this case the same)*/
  h.displayHouses(s, 300, 300);
  /*calls object b and custom function displayBuildings. The first argument
  called is the space between the Buildings, which is set to variable r*/
  b.displayBuildings(r);
  //calls object h to draw more houses in front of the buildings
  h.displayHouses(s, 320, 420);
  //calls object h to draw more houses in front of the buildings
  h.displayHouses(s, 360, 460);
  //calls object m again to draw more mountains
  m.displayMountains(600, 400, 550, 300);
  //removes the loop
  noLoop();
}
//The following functions will set up the user interaction
// sets the release of the mouse to true
boolean mouseReleased = true;
//function mousePressed
void mousePressed(){
  //if mousePressed is true
  if (mousePressed == true){
    //redraw the scene
  redraw();
  //add the loop back
  loop();
  }
}
//function mouseReleased
void mouseReleased(){
  //if mouseReleased is true (boolean)
    if (mouseReleased == true) {
      //remove the scene loop
    noLoop();
  }
}

// next tab.
