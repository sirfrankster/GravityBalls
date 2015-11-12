//declare variables
float x, y, velX, velY, diam;
float earthACC;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  earthACC = .5;
}

void draw() {
  //draw background to cover previous frame
  background(0, 255, 255);

  //draw ball
  ellipse(x, y, diam, diam);
  fill(0);

  //add velocity to position
  x += velX;
  y += velY;
  velY+=earthACC;


  //bounce ball if it hits walls
  if (x[i] + diam[i]/2 >= width) {
    velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[i] - diam[i]/2 <= 0) {
    velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[i] + diam[i]/2 >= height) {
    velY[i] = -abs(velY[i]);
    y[i] = height - diam[i]/2;
    if (true);
    velY[i] = -abs(velY[i]);
  }
}
if (y + diam/2 >= height) {
  velY = -abs(velY);
} else if (y - diam/2 <= 0) {
  velY = abs(velY);
} 
}