void setup(){
  size(500,500);
}
void draw(){
  background(255,255,255);
  circleA(150,5);
}
void circleA(int size, int aantal){
  for(int i = 0; i < aantal; i++){
   ellipse(150 + size/2,150,size,size);
   size -= 15;
  }
}
