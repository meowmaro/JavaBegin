size(400,400);
background(255,255,255);
int a = 20;
for(int x = 0; x < 20; x++){
   for(int y = 0; y < 20; y++){
     if((x+y) % 2 == 0){
     stroke(255,255,255);
     fill(255,0,0);
     rect(a + 15 * x, 15 * y+ 30, 50, 15);
    }
  }
}
