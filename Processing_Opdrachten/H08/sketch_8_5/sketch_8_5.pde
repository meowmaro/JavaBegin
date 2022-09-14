size(250,250);
background(255,255,255);

int sizeC = 0;

noFill();
for(int i = 0; i < 5; i++){
  ellipse(100, 100, sizeC,sizeC);
  sizeC+=10;
  println(sizeC);
}
