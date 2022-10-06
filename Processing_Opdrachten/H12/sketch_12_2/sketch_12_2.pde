int seconden;
int aantalSpaties;
int timeLeft;
int milli;
boolean started = true; 

void setup(){
  size(500,500);
}

void draw(){
  background(255,255,255);
  timeLeft = 10 - seconden;
  milli = 1000 - (millis()%1000);
  if(timeLeft <= 0){
    timeLeft = 0;
  }
  seconden = millis()/1000;
  if(seconden >= 10){
    started = false;
  }
  fill(50,50,50);
  textSize(23);
  text(" spaties: " + aantalSpaties,150,220);
  text(" seconden over: " + timeLeft,150,250);
}

void keyReleased(){
  if(keyCode == 32 && started){
    aantalSpaties++;
  }
}
