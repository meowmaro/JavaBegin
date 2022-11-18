class SnakeOBJ {
  int x, y, id;


  SnakeOBJ() {
    id = snakeCount;
    snakeCount++;
    if (id != 0 && snakes.size() > 0) {
      snake = snakes.get(id - 1);
      x = snake.x;
      y = snake.y;
    }
    //println(id);
  }

  SnakeOBJ(int sX, int sY) {
    x = sX;
    y = sY;
    id = snakeCount;
    snakeCount++;
    if (id != 0 && snakes.size() > 0) {
      snake = snakes.get(id - 1);
      x = snake.x;
      y = snake.y;
    }
    //println(id);
  }

  void visual() {
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
      if (x < 0 || y < 0 || x > w || y > h) {gameState = 2;}
      if (dir == 0) {x += 1;}
      if (dir == 1) {y += 1;}
      if (dir == 2) {x -= 1;}
      if (dir == 3) {y -= 1;}
      for (int i = 1; i < snakes.size(); i++) {
        snake = snakes.get(i);
        if (x == snake.x && y == snake.y) {
          gameState = 2;
          dir = -1;
        }
      }
    } else {
      snake = snakes.get(id - 1);
      x = snake.x;
      y = snake.y;
    }
  }
}

class FoodOBJ {
  int x, y;

  FoodOBJ() {
    x = int(random(w));
    y = int(random(h));
  }


  void visual() {
    ellipseMode(CORNER);
    fill(255, 0, 0);
    ellipse(x*rectSize, y*rectSize, rectSize, rectSize);
  }

  void update() {
    if (snakes.size() > 0) {
      for (int i = 0; i < snakes.size(); i++) {
        
        snake = snakes.get(0);
        //println(snake.id, i);
        if (snake.id == 0 && x == snake.x && y == snake.y) {
          x = int(random(w));
          y = int(random(h));
          snakes.add(new SnakeOBJ());
        }
      }
    }
  }
}
