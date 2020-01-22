

void InitialScreen (){
  background(InitialBackgroundImage);
  fill(textColor);
  textAlign (CENTER);
  textSize (generelTextsize);
  text("Press anywhere to start",width/2,height/2);
  if (!InitialScreenAudio.isPlaying()){ 
  InitialScreenAudio.play();
  }
}
