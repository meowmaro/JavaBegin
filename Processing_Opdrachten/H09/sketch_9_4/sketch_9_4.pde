int a = 200;
int b = 200;
int c = 400;
int d = 400;

void setup(){
size(600,600);
background(255,255,255);
}

void draw(){
  line(a,b,b,d);
  line(a,c,c,d);
  line(d,c,c,a);
  line(d,b,b,a);
}
