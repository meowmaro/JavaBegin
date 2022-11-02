ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int w = 30, h = 30, rectSize = 20, dir = 2, foodX = 12, foodY = 10;
int[] dx = {0,0,1,-1}, dy = {1,-1,0,0};
boolean gameover = false;
void setup()  {
  size(600,600);
  //spawns snake at the same location everytime
  x.add(5);
  y.add(5);
}

void draw()  {
  background(0);
  for(int i = 0; i < w; i++) line(i * rectSize, 0, i * rectSize, height);
  for(int i = 0; i < h; i++) line(0, i * rectSize, width, i * rectSize);
  for(int i = 0; i < x.size(); i++) {
    fill(0,255,0);
    rect(x.get(i) * rectSize, y.get(i) * rectSize, rectSize, rectSize);
  }
  if(!gameover)  {
  //draws the food
  fill(255,0,0);
  rect(foodX * rectSize, foodY * rectSize, rectSize, rectSize);
  if(frameCount%7==0)  {
    x.add(0, x.get(0) + dx[dir]);
    y.add(0, y.get(0) + dy[dir]);
    if(x.get(0) < 0 || y.get(0) < 0 || x.get(0) >= w || y.get(0) >= h) gameover=true;
    if(x.get(0) == foodX && y.get(0) == foodY)  {
      foodX = (int)random(0,w);
      foodY = (int)random(0,h);
    }else {
    x.remove(x.size()-1);
    y.remove(y.size()-1);
    }
   }
  }else{
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Game Over. Press any key", width/2, height/2);
    if(keyPressed&&key=='')  {
      x.clear();
      y.clear();
      x.add(5);
      y.add(5);
      gameover = false;
    }
 }
}
void keyPressed()  {
  int newDir = keyCode == DOWN? 0: (keyCode == UP? 1: (keyCode == RIGHT? 2: (keyCode == LEFT? 3:-1)));
  if (newDir != -1) dir = newDir;
}
