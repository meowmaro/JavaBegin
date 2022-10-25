ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int w = 30, h = 30, blocks = 20, direction = 2, foodX = 15, foodY = 15;
int[]xDirection={0,0,1,-1}, yDirection={1,-1,0,0};

void setup() {
  size(500,500);
  x.add(0);
  y.add(15);
}

void draw() {
  background(0,0,0);
  fill(50,160,50);
  for (int i = 0; i < x.size(); i++) rect(x.get(i)*blocks, y.get(i)*blocks, blocks, blocks);
    //speed of the snake
  if(frameCount%9==0){
    //x and y position/direction of the snake
    x.add(0, x.get(0) + xDirection[direction]);
    y.add(0, y.get(0) + yDirection[direction]);
    //removes blocks after the first
    x.remove(x.size()-1);
    y.remove(y.size()-1);
      
    }
}

void keyPressed() {
  //directs the snake up, down, left or right
  int newDir = keyCode == DOWN? 0: (keyCode == UP? 1: (keyCode == RIGHT? 2: (keyCode == LEFT? 3:-1)));
  if (newDir != -1) direction = newDir;
}
