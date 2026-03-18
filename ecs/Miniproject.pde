// IW | 2026 3 18 | Mini Project 
float targetX, targetY;
float targetSize = 60;
float speed = 3;
int score = 0;

void setup() {
  size(600, 600); 
  spawnTarget();  
}

void draw() {
  background(127,127); 
  
 
  
  targetX = constrain(targetX, targetSize, width - targetSize);
  targetY = constrain(targetY, targetSize, height - targetSize);
  
  fill(255, 0, 0);
  noStroke();
  ellipse(targetX, targetY, targetSize, targetSize);
  
  fill(255);
  textSize(40);
  text("Score: " + score, 20, 40);
}

void mousePressed() {
  float d = dist(mouseX, mouseY, targetX, targetY);
  if (d < targetSize / 2) {
    score = score + 1;
    speed += 0.5; 
    spawnTarget();
  }
}

void spawnTarget() {
  targetX = random(targetSize, width - targetSize);
  targetY = random(targetSize, height - targetSize);
}
