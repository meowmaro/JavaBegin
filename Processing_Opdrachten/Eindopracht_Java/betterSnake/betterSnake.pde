//ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
ArrayList<SnakeOBJ> snakes = new ArrayList<SnakeOBJ>();
ArrayList<FoodOBJ> foods = new ArrayList<FoodOBJ>();
int rectSize = 20, w, h, dir = 0, foodX = 10, foodY = 10;
int[] dx = {0, 0, 1, -1}, dy = {1, -1, 0, 0};
String[] keyPress = new String[500];
String[] keyHold = new String[500];
float deltaTime = 0, oldTime = 0, frames;
int gameState = 2;
int keysPressed, keysHeld;
int snakeCount = 0;
SnakeOBJ snake;
FoodOBJ food;

void setup() {
  size(600, 600);
  w = width/rectSize;
  h = height/rectSize;
  //spawns snake at the same location everytime
  background(0);
  surface.setResizable(true);
  frameRate(300);
  foods.add(new FoodOBJ());
  snakeHeadSpawn();
  for (int i = 0; i < keyPress.length; i++) {
    keyPress[i] = "0";
    keyHold[i] = "0";
  }
}

void draw() {
  deltaTime = millis() - oldTime;
  oldTime = millis();
  frames += (1 * (60/frameRate)) * deltaTime;


  w = (ceil(width/rectSize) - 1);
  h = (ceil(height/rectSize) - 1);
  println(frames);
  if (frames > 14) {
    frames = 0;
    if (gameState == 1) {
      background(0);

      if (keyHold[32] != "0") {
        foods.add(new FoodOBJ());
      }
      int newDir = keyHold[40] != "0"? 1: (keyHold[38] != "0"? 3: (keyHold[39] != "0"? 0: (keyHold[37] != "0"? 2: dir)));
      if (newDir != (dir + 2) % 4 || snakes.size() < 2) {
        dir = newDir;
      }

      for (int i = snakes.size() - 1; i > -1; i--) {

        snake = snakes.get(i);

        snake.visual();
        snake.update();
      }

      for (int i2 = 0; i2 < foods.size(); i2++) {
        //   println(foods.size());
        food = foods.get(i2);
        food.visual();
        food.update();
      }
    }
    keyReset();
  }

  if (gameState == 2) {
    //if walls or self is hit, show game over and give option to reset
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Press 'A' to start.", width/2, height/2);
    if (keyHold[65] != "0") {
      snakes.clear();
      snakeHeadSpawn();
      gameState = 1;
    }
  }
}



void snakeHeadSpawn() {
  snakeCount = 0;
  dir = 0;
  snakes.add(new SnakeOBJ(w/2, h/2));
}

void keyReset() {
  for (int i = 0; i < keyPress.length; i++) {
    keysPressed = 0;
    keyPress[i] = "0";
  }
}
