class snake{
  
  //define varibles
  int snakelength = 1;
  float sidelength = 25;
  String direction; 
  ArrayList <Float> xpos, ypos;
  int SnakeColor = 0;
  int tail = 1;
  
  // constructor
  snake(){
    direction = "right";
    xpos = new ArrayList();
    ypos = new ArrayList();
    xpos.add( random(width) ); //adds number (x-value) to an array - here it is a random number within the width
    ypos.add( random(height) ); //adds number (y-value) to an array - here it is a random number within the width
  }
  
  // functions

  
  void move(){
   for(int i = snakelength - 1; i > 0; i = i -1 ){
    xpos.set(i, xpos.get(i - 1));                      //x.pos.get()= returns the element at the specified position in the ArrayList
    ypos.set(i, ypos.get(i - 1));  
   } 
   if(direction == "left"){
     xpos.set(0, xpos.get(0) - sidelength);
   }
   if(direction == "right"){
     xpos.set(0, xpos.get(0) + sidelength);
   }
   
   if(direction == "up"){
     ypos.set(0, ypos.get(0) - sidelength);
  
   }
   
   if(direction == "down"){
     ypos.set(0, ypos.get(0) + sidelength);
   }
   
   xpos.set(0, (xpos.get(0) + width) % width); 
   ypos.set(0, (ypos.get(0) + height) % height);
   
    // check if hit itself and if so cut off the tail
    if( checkHit() == true){
      snakelength = 1;
      float xtemp = xpos.get(0);
      float ytemp = ypos.get(0);
      xpos.clear();
      ypos.clear();
      xpos.add(xtemp);
      ypos.add(ytemp);
      gameScreen=2;
    }
    
  }
  
  
  
  void display(){
   for(int i = 0; i <snakelength; i++){
      fill(SnakeColor); //Color of the snake
      rect(xpos.get(i), ypos.get(i), sidelength, sidelength);
    }  
  }
  
  
  void addLink(){                                                //Function for addLink, when snakes eats apple
    xpos.add( xpos.get(snakelength-1) + sidelength);              //
    ypos.add( ypos.get(snakelength-1) + sidelength);
    snakelength++;
    AppleCrunchAudio.play();                                      //Plays Apple Crunch sound
  }
  
   boolean checkHit(){
    for(int i = 1; i < snakelength; i++){
     if( dist(xpos.get(0), ypos.get(0), xpos.get(i), ypos.get(i)) < sidelength){
       return true;
     } 
    } 
    return false;
   } 
 
}
