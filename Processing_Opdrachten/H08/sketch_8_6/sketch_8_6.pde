size(900,600);
background(255,255,255);

int size = 100;

for(int i = 0; i < 5; i++){
  ellipse(100 - size/2, 100 - size/10, size,size);
  size-=10;
}
