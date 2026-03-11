// Isabella Wang | 4 Mar 2026 | ShapeGame
int x, y, tx, ty, score;
float tw;
PImage player,target;

void setup() {
  size(800, 800);
  x = width/2;
  y = height/2;
  tx= int(random(20, width-20));
  ty= int(random(20, height-20));
  tw = 200;
  score=0;
  player = loadImage("player.png");
  target = loadImage("target.png");
}

void draw() {
  background(#CBDCFF);
  scorePanel();
  target();
  imageMode(CENTER);
  image(player,x,y);
  //ellipse(x, y, 20, 20);
}

void target() {
  float d = dist(x, y, tx, ty);
  println(d);
  if (d<50) {
    score = score + int(tw*2);
     tx= int(random(20, width-20));
    ty= int(random(20, height-20));
    tw=200;
  }
  rectMode(CENTER);
  //rect(tx, ty, 50, 50);
  if(tw<10) {
    gameOver();
  }
  image(target,tx,ty,tw,tw);
    tw = tw - 0.2;
    target.resize (int(tw), int (tw));
  
}

void scorePanel() {
  fill(#A3B7E0);
  rect(width/2,15,width,30);
  fill(0);
  textSize(30);
  text("Score:"+score,20,25);
}

void gameOver() {
  background(0);
  fill(255,0,0);
  textSize(40);
  text("Game Over!",width/2,height/2);
  noLoop();
}

void keyPressed() {
  // Edge looping
  if (x > width) {
    x = 0;
  }

  if (x < 0) {
    x = width;
  }
  if (y > height) {
    y = 0;
  }
  if (y < 0) {
    y = height;
  }
  // WASD and Arrow Movement
  if (key == 'w' || key == 'W' || keyCode == UP) {
    y = y - 20;
  } else if (key == 's' || key == 'S' || keyCode == DOWN) {
    y = y + 20;
  } else if (key == 'a' || key == 'A' || keyCode == LEFT) {
    x = x - 20;
  } else if (key == 'd' || key == 'D' || keyCode == RIGHT) {
    x = x + 20;
  }
}
