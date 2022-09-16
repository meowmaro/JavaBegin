size(500,500);
background(255,255,255);

int sizeC = 0;

noFill();
for(int i = 0; i < 50; i++){
  ellipse(100, 100, sizeC,sizeC);
  sizeC+=10;
  println(sizeC);
}
