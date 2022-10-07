void setup(){
  size(500,500);
  background(0);
  noStroke();
  colorMode(HSB, height + width,1,1);
}

void draw(){
  
}

void mouseMoved(){
  println(mouseY + mouseX);
  fill(mouseY + mouseX,1,1);
  rect(mouseX,mouseY,40,40);
}

void mousePressed(){
  println(mouseButton);
}
