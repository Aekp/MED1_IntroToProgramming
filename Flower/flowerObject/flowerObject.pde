//This code was taken from https://github.com/tildenordsted/MED1_IntroToProgramming/tree/master/Flower/flowerObject

Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;
Flower[] flowerArray;
Flower c;

void setup() {
  size(800,700);
  
  
  int _r1= 60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  myFlower1 = new Flower(_r1,_petals,_x,_y,#FFF27C, #FFAE7C,2.3, 2.5);
  myFlower2 = new Flower(50, 20, _x,_y,#FFF27C ,#FF7CE9, 3.3, 5.9);
  myFlower3 = new Flower(_r1,_petals,_x+50,_y,#FFF27C, #C17CFF,10.10,10.10);
  c = new Flower(10,#9FF094,_x,_y);
  
  flowerArray = new Flower[10];
  
  for(int i=0; i<flowerArray.length;i++){
    _x = random(100,width-100);
    _y = random(100,height-100);
    _r1 = 5 * i; 
   flowerArray[i] = new Flower(_r1,_petals,_x,_y,#FFF27C, #C17CFF,10.10,10.10);
  }

//  myFlower2 = new Flower();
//   myFlower3 = new Flower();
}

void draw(){
  if( myFlower2.ramt == true){
    background(#F09494);
  }
  else{ 
  background(#499FE8);
  }
  myFlower1.display();
  myFlower1.flytterigtigt();
  myFlower1.flytteflytte();
  myFlower2.display();
  myFlower2.flyttemus();
  myFlower2.rammeramme(myFlower1);
  myFlower3.display();
  myFlower3.flytterigtigt();
  myFlower3.flytteflytte();
  c.displayC();
  c.flytterigtigt();
  c.flytteflytte();
  
for(int i=0; i<flowerArray.length;i++){
 flowerArray[i].display();
 flowerArray[i].flytterigtigt();
 flowerArray[i].flytteflytte();
}
}
