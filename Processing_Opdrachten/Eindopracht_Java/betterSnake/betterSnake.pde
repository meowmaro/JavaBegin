import processing.sound.*;

//initialize variables
ArrayList<SnakeOBJ> snakes = new ArrayList<SnakeOBJ>();
ArrayList<FoodOBJ> foods = new ArrayList<FoodOBJ>();
int rectSize = 20, w, h, dir = 0, foodX = 10, foodY = 10;
int[] dx = {0, 0, 1, -1}, dy = {1, -1, 0, 0};
String[] keyPress = new String[500];
String[] keyHold = new String[500];
float deltaTime = 0, oldTime = 0, frames, frameSpeed, foodCount = 0, score, foodNextSpawn = 5;
int gameState = 2;
int keysPressed, keysHeld, keyQueue;
int snakeCount = 0;
SnakeOBJ snake;
SnakeOBJ targetSnake;
FoodOBJ food;
SoundFile sF;
Sound s;
SoundFile[] soundList = new SoundFile[100];

void setup() {
  //standard windowsize, and initialize width and height variables
  size(600, 600);
  w = width/rectSize;
  h = height/rectSize;
  background(0);
  //makes the window resizable
  surface.setResizable(true);
  frameRate(300);
  //spawn first foodq
  foods.add(new FoodOBJ());
  //spawns snake head
  snakeHeadSpawn();
  //give default values to the list
  for (int i = 0; i < keyPress.length; i++) {
    keyPress[i] = "0";
    keyHold[i] = "0";
  }
   //loads sounds into array, then plays OST1
   soundList[1] = new SoundFile(this, "data/blip.wav");
   soundList[0] = new SoundFile(this, "data/ost1.mp3");
   soundList[0].amp(0.4);
   soundList[0].play();
}

void draw() {
  //sets the delta time
  deltaTime = millis() - oldTime;
  oldTime = millis();
  //increments a frame counter by 1 approximately
  frames += (1 * (60/(1000/deltaTime)));

  //sets the grid width and height minus one to prevent the border from being outside of the screen.
  w = (ceil(width/rectSize) - 1);
  h = (ceil(height/rectSize) - 1);
  
  // waits until "frameSpeed" frames have passed before running a gameloop. "frames" will decrease by "frameSpeed".
  if (frames > int(frameSpeed) ) {
    frames -= frameSpeed;
    
    //gameloop. Only runs when gameState is "1".
    if (gameState == 1) {
      background(0);
      fill(255);
       textSize(30);
       textAlign(CENTER);
       text("Score: " + int(score) , width/2, 100);
      //keyQueue holds the last keyPressed for that frame, in this case "space bar", then adds a new food to the game. (This is a debug feature).
      if (keyQueue == 32) {
        foods.add(new FoodOBJ());
      }
      
      //Debug feature: adds a snake body.
        if (keyQueue == 10 || keyQueue == 13) {
       snakes.add(new SnakeOBJ());
       score++;
      }
      
      //sets new direction if its not the opposite direction (assuming the snake is bigger than 1)
      int newDir = keyQueue == 40? 1: (keyQueue == 38? 3: (keyQueue == 39? 0: (keyQueue == 37? 2: dir)));
      if (newDir != (dir + 2) % 4 || snakes.size() < 2) {
        dir = newDir;
      }
      
      //updates snake in reverse order to allow the body to follow the head
      for (int i = snakes.size() - 1; i > -1; i--) {

        snake = snakes.get(i);
         snake.update();
        snake.visual();
       
      }
      
      //update food
      for (int i2 = 0; i2 < foods.size(); i2++) {
        //   println(foods.size());
        food = foods.get(i2);
        food.update();
        food.visual();
      }
       
    }
    //resets "keyPress" array
    keyReset();
  }

  //game over state
  if (gameState == 2) {
    //if walls or self is hit, show game over and give option to reset
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Press 'A' to start.", width/2, height/2);
    if (keyHold[65] != "0") {
      snakes.clear();
      foods.clear();
      foods.add(new FoodOBJ());
      snakeHeadSpawn();
      gameState = 1;
      frameSpeed = 9;
      oldTime = millis();
      deltaTime = 0.0166;
      frames = 0;
      soundList[1].amp(1);
      soundList[1].play();
      score = 0;
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
    keyQueue = -100;
  }
}
