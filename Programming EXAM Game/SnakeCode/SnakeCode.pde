import processing.sound.*; //Import sound library from Processing - accesses different methods appliable to the soundFiles

SoundFile InitialScreenAudio; 
SoundFile GameScreenAudio;
SoundFile AppleCrunchAudio;
SoundFile GameOverAudio;

snake Snake;   //Declares object
food food1;    //Declares object
food food2;    //Declares object

int highScore;

PImage InitialBackgroundImage;            //Declares Image variable
PImage BackgroundImage;                   //Declares Image variable
PImage GameOverBackgroundImage;            //Declares Image variable
PImage Apple;                              //Declares Image variable


int textColor = 255;
int generelTextsize = 30;

int gameScreen = 0;

int Difficulty = 20; //Difficulty/FPS - makes the snake go faster

void setup(){
  size(1000, 600);                                     // Defines the size of the canvas
  BackgroundImage = loadImage("SnakeBackground.jpg"); //Initializes BackgroundImage og load image fra Data-mappen
  frameRate(Difficulty);                              // Sets the framerate after variable "Difficulty" - the higher the FPS, the faster moving the snake is
  Snake = new snake();                                //Initialize object
  food1 = new food();                                  //Initialize object
  food2 = new food();                                  //Initialize object
  
 
 // SOUNDS LOADING //
  
  InitialScreenAudio = new SoundFile(this, "Pixel-Drama.mp3");         //Initializes soundFiles from data
  GameScreenAudio = new SoundFile(this, "Snake-Runner.mp3");           //Initializes soundFiles from data  
  AppleCrunchAudio = new SoundFile(this, "applecrunch.wav");            //Initializes soundFiles from data
  GameOverAudio = new SoundFile(this, "ArcadeGameOver.wav");           //Initializes soundFiles from data
  
 
// IMAGE LOADING //  
  GameOverBackgroundImage = loadImage("SnakeBackgroundGameOver.jpg");      //Initializes image from data
  InitialBackgroundImage = loadImage("SnakeBackgroundInitial.jpg");       //Initializes image from data
   Apple = loadImage("Apple.png");                                        //Initializes image from data
}



void draw(){
  if (gameScreen==0){               //If gameScreen==0, use InitialScreen function - described in the InitialScreen-tab
    InitialScreen();               // InitialScreen function
  } else if (gameScreen==1){       // If gameScreen==1, use GameScreen function - described in the GameScreen-tab 
    GameScreen();                  //GameScreen function
  } else if (gameScreen==2){       // If gameScreen==2, use GameOverScreen function and stop the GameScreenAudio - described in the GameOverScreen-tab
    GameOverScreen();              // GameOverScreen function
    GameScreenAudio.stop();        //makes the audio for GameScreen stop
  }
  
}



void mousePressed(){               // If mousePressed anywhere, and gameScreen==0, use StartGame function
  if (gameScreen==0){
    Startgame();
  } 
}

void Startgame(){                  //StartGame function, sets the gameScreen=1 - which is GameScreen - see tab "GameScreen"
  gameScreen=1;                    // Sets gameScreen=1 
  
}
