class SnakeOBJ {
  int x, y, id;


  SnakeOBJ() {
    id = snakeCount;
    snakeCount++;
    if (id != 0 && snakes.size() > 0) {
      targetSnake = snakes.get(id - 1);
      x = targetSnake.x;
      y = targetSnake.y;
    }
  }

  SnakeOBJ(int sX, int sY) {
    x = sX;
    y = sY;
    id = snakeCount;
    snakeCount++;
    if (id != 0 && snakes.size() > 0) {
      targetSnake = snakes.get(id - 1);
      x = targetSnake.x;
      y = targetSnake.y;
    }
  }

  void visual() {
    //displays the snake part
    rectMode(CORNER);
    if (id == 0) {
      fill(0, 150, 0);
    } else {
      fill(0, 255, 0);
    }
    rect(x*rectSize, y*rectSize, rectSize, rectSize);
  }

  void update() {

    if (id == 0) {
      if (x < 0 || y < 0 || x > w || y > h) {gameState = 2; dir = -1;}
      if(gameState == 1){
        //snake head moves in direction
        if (dir == 0) {x += 1;}
        if (dir == 1) {y += 1;}
        if (dir == 2) {x -= 1;}
        if (dir == 3) {y -= 1;}
        for (int i = 1; i < snakes.size(); i++) {
          targetSnake = snakes.get(i);
          if (x == targetSnake.x && y == targetSnake.y) {
            gameState = 2;
            dir = -1;
          }
        }
      }
    } else {
      //moves snake body to the position of the one infront of it
      targetSnake = snakes.get(id - 1);
      x = targetSnake.x;
      y = targetSnake.y;
    }
  }
}

class FoodOBJ {
  int x, y;

  FoodOBJ() {
    //constructor. Sets random position for the food
    x = int(random(w));
    y = int(random(h));
  }


  void visual() {
    //displays the food
    ellipseMode(CORNER);
    fill(255, 0, 0);
    ellipse(x*rectSize, y*rectSize, rectSize, rectSize);
  }

  void update() {
    if (snakes.size() > 0) {
      for (int i = 0; i < snakes.size(); i++) {
        
        targetSnake = snakes.get(0);
        //checks if the food is touching the head
        if (x == targetSnake.x && y == targetSnake.y) {
          //sets random food position again
          x = int(random(w));
          y = int(random(h));
          //adds a snake body part
          snakes.add(new SnakeOBJ());
          //increases score
          foodCount += 1;
          score++;
          //adds food after a certain score has been reached and plays a sound
          if(foodCount >= foodNextSpawn){foods.add(new FoodOBJ()); foodNextSpawn += foodNextSpawn; frameSpeed -= 1;}
          constrain(frameSpeed, 1, 60);
          soundList[1].amp(1);
          soundList[1].play();
          
        }
      }
    }
  }
}
