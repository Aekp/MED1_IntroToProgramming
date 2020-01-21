class Flower {

  // Variables

  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  int petalColor;//hexadecimal number for the color of petals
  int midterfarve;
  int xdirection = 1;
  int ydirection = 1;
  float xspeed;
  float yspeed;
  boolean ramt;

  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y,int tempmidterfarve, int temp_petalColor,float tempxspeed, float tempyspeed) {
    r=temp_r;
    n_petals = temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
    midterfarve = tempmidterfarve;
    xspeed=tempxspeed;
    yspeed=tempyspeed;
  }
  
  Flower(float r, int midterfarve, float x, float y){
    this.r = r;
    this.midterfarve = midterfarve;
    this.x = x;
    this.y = y;
  }
  
  void displayC (){
   fill (midterfarve);
   ellipse (x,y,r,r);
  } 

  void display () {
   
    float ballX;
    float ballY;

    fill(petalColor);
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      //  ballX=width/2 + r*cos(i);
      //  ballY=height/2 + r*sin(i);
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    fill(midterfarve);
    ellipse(x, y, r*1.2, r*1.2);
    
  }
  
  //https://processing.org/examples/bounce.html
  void flytteflytte(){
    if (x > width-r || x < r) {
    xdirection *= -1;
  }
  if (y > height-r || y < r) {
    ydirection *= -1;
  }
  
  }
  void flytterigtigt(){
    
   x = x + ( xspeed * xdirection );
  y = y + ( yspeed * ydirection ); 
  }
  
  void flyttemus(){
    x = mouseX;
    y = mouseY;
  }
  
  void rammeramme(Flower blomst){
    if (dist(blomst.x,blomst.y,x,y)<r*2){
    ramt = true;
    }
    else{
    ramt=false;
    }
  }
}
