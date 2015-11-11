//declare variables
int count = 30;

float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];
float[] earthACC = new float[count];

void setup() {
  //set size of canvas
  size(800, 600);
  for (int i = 0; i<count; i++) {
    //initialize variables
    x[i] = width/2;
    y[i] = width/2;
    diam[i] = 50;
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    earthACC[i] = .1;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  fill(0, 255, 255);

  for (int i = 0; i<count; i++) {
    ellipse(x[i], y[i], diam[i], diam[i]);
    velY[i]+=earthACC[i];
    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];
    

    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
    }
  }
}