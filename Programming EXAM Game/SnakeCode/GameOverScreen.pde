boolean started = false;       // declared boolean function 

int rectXposi = 500;          //desclares and initializes x-position for rect
int rectYposi = 300;          //desclares and initializes y-position for rect
int rectWidth = 400;          //desclares and initializes width for rect
int rectHeight = 100;          //desclares and initializes height for rect

int rectColor = 255;          //desclares and initializes color for rect 
int rectAlpha = 60;        //desclares and initializes alpha (transparency) for rect
int rectAlphaHighlight = 100;       //declares and initialized the alpha for the highlight

void GameOverScreen(){                         //function for GameOverScreen
  background(GameOverBackgroundImage);          //use the initialized background image "GameOverBackgroundImage"
  if (GameScreenAudio.isPlaying()){            //(Method from sound library) if GameScreenAudio is playing -> pause the sound, and play "GameOverAudio"
    GameScreenAudio.pause();                    //Method from sound library: pause ();
    GameOverAudio.play();                      //Method from sound library: play ();
  }
  
  fill(rectColor,rectAlpha);                          //color and alpha for rect
  rect(rectXposi,rectYposi, rectWidth,rectHeight);      //draws a rect at the initialized values 
  
  
  fill(textColor);                                       //textcolor initialized in "SnakeCode"-tab
  textAlign(CENTER);                                      //aligns accordingly to the center of the rect
  textSize(generelTextsize);                              //text size initialized in "SnakeCode"-tab
  text("GAME OVER", width/2, height/3);                    //The text content and placement
  
  text("Press to start over", width/2, height/2);          //the text content and placement
  
  //INTERACTIVE BUTTON //
  
 if(mouseX > rectXposi && mouseX < rectXposi+rectWidth && mouseY > rectYposi && mouseY < rectYposi+rectHeight){ //checks if the mouse is inside the initialized values
   noStroke();
   fill(rectColor,rectAlphaHighlight);                        //color and alpha (highlight) for rect 
   rect(rectXposi,rectYposi, rectWidth,rectHeight);            //draws rect in same position - so that it gives a highlight 
 }
  
}

void mouseClicked(){              //mouse clicked function, that checks: if mouse i clicked insided of the rect, the gameScreen=1 (gameplay screen)
  if(mouseX > rectXposi && mouseX < rectXposi+rectWidth && mouseY > rectYposi && mouseY < rectYposi+rectHeight && started==false){
  gameScreen=1;
  }
}
