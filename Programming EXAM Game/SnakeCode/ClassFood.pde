class food{
  
  // define varibles
  float foodXpos;           //declared the variable for the x-position
  float foodYpos;            // declares the variable for the y-position
  int FoodBorder = 50;     //Sets the border for the food spawning
  
  
  
  //constructor
  food(){
    foodXpos = random(FoodBorder, width - FoodBorder); //assigns x-pos a random number from the value of foodborder (50), and to the width-foodborder (1000-50)
    foodYpos = random(FoodBorder, height - FoodBorder); //assigns y-pos a random number from the value of foodborder (50), and to the height-foodborder (600-50)
                                                        // foodborder is so that the apples dont spawn right on the edge of the screen
  }
  
  
  // functions
 void display(){                                      //display function for the class
   
image(Apple,foodXpos,foodYpos);                        //Uses the initialized image "Apple", and places it on the x-pos and y-pos (which are randomized)
 }
 
 
 void reset(){                                        //reset function for the x and y values for food
    foodXpos = random(FoodBorder, width - FoodBorder); 
    foodYpos = random(FoodBorder, height - FoodBorder);
 }   
}
