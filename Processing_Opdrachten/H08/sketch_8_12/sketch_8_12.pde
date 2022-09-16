size(400,400);
background(255,255,255);
int a = 20;
for(int x = 0; x < 20; x++){
   for(int y = 0; y < 20; y++){
     if((x+y) % 2 == 0){
       fill(0,0,0);
     rect(a + 15 * x, 15 * y+ 15, 15, 15);
    }
  }
}
