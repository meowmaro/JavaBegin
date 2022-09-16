size(500,500);
background(255,255,255);
int a = 40;
noFill();
for(int x = 0; x < 20; x++){
   for(int y = 0; y < 20; y++){
   rect(a + 15 * x,  15 * y+ 15, 15, 15);
  }
}
