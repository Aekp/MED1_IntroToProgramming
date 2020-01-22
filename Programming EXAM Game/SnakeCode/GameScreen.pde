int StrokeForScorebooard = 0;            
int FillForScoreboard = 250;

int ScoreboardX = 90;
int ScoreboardY = 510;
int ScoreboardWidth = 160;
int ScoreboardHeight = 80;
int TextSizeScore = 17;
int TextScoreX = 90;
int TextScoreY = 495;
int TextHighScoreY = 520;

int TextScoreFill = 0;

void GameScreen(){                            //GameScreen function
  if (InitialScreenAudio.isPlaying()){         // METHOD from sound library - if InitialScreenAudio is playing: pause it -> play GameScreenAudio, and set it to loop
    InitialScreenAudio.pause();                //Method from sound library
    GameScreenAudio.play();                    //Method from sound library
    GameScreenAudio.loop();                    //Method from sound library
  }
  if(!GameScreenAudio.isPlaying()){           // "!GameScrrenAudio" - if GameScreenAudio is NOT playing -> play GameScreenAudio
    GameScreenAudio.play();                    //Method from sound library
  } 
  
  background(BackgroundImage);   //Loads in the background image initialized in setup (SnakeCode-tab)
  drawScoreboard();             //uses the drawScoreboard function (Further down)
  
  Snake.move();                  //Calls method of object
  Snake.display();               //Calls method of object
  food1.display();                //Calls method of object
  food2.display();                //Calls method of object
  
  
  if( dist(food1.foodXpos, food1.foodYpos, Snake.xpos.get(0), Snake.ypos.get(0)) < Snake.sidelength ){     /*If the distance between food x-postion and snake x-position
                                                                                                  and food y-position and snake y-position, is less than snakelength */
    food1.reset();                        //food will reset - reset method of food object
    Snake.addLink();                     // adds link on snake - addLink methos of snake object                          
  }
  
   if( dist(food2.foodXpos, food2.foodYpos, Snake.xpos.get(0), Snake.ypos.get(0)) < Snake.sidelength ){    /*If the distance between food x-postion and snake x-position
                                                                                                 and food y-position and snake y-position, is less than snakelength */
    food2.reset();                   //food will reset - reset method of food object                                                           
    Snake.addLink();                  // adds link on snake - addLink methos of snake object 
  }
  
  
  if(Snake.snakelength > highScore){     //If the snakelength is higher than highscore - highscore is the new "highscore"-snakelength
    highScore= Snake.snakelength;
  }
}


void keyPressed(){
  if(key == CODED){
    if(keyCode == LEFT){
      Snake.direction = "left";
    }
    if(keyCode == RIGHT){
      Snake.direction = "right";
    }
    if(keyCode == UP){
      Snake.direction = "up";
    }
    if(keyCode == DOWN){
      Snake.direction = "down";
    }
  }

}
  
void drawScoreboard(){
 
 
  // draw scoreboard
  stroke(StrokeForScorebooard); //Stroke for rect
  fill(FillForScoreboard); //Color fill for rect
  rect(ScoreboardX, ScoreboardY, ScoreboardWidth, ScoreboardHeight);
  
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  
  fill(TextScoreFill); //Fill for score text
  textSize(TextSizeScore);
  text( "Score: " + Snake.snakelength, TextScoreX, TextScoreY);

  
  textSize(TextSizeScore);
  text( "High Score: " + highScore, TextScoreX, TextHighScoreY);
}
