Star[] stars = new Star[100];
Spaceship bob;
ArrayList<asteroid> asteroids;
boolean shipAlive = true;

public void setup() {
  size(300, 300);
  for (int i = 0; i < stars.length; i++) stars[i] = new Star();
  bob = new Spaceship();
  asteroids = new ArrayList<asteroid>();
  for (int i = 0; i < 10; i++) asteroids.add(new asteroid());
}

public void draw() {
  background(0);
  for (Star s : stars) s.show();

  for (asteroid a : asteroids) {
    a.show();
    a.move();
    if (shipAlive && collide(bob, a)) shipAlive = false;
  }

  if (shipAlive) {
    bob.show();
    bob.move();
  }
}

public void keyPressed() {
  if (key == 'w') bob.accelerate(.1);
  if (key == 'd') bob.turn(20);
  if (key == 'a') bob.turn(-20);
  if (key == 't') {
    bob.myCenterX = Math.random() * width;
    bob.myCenterY = Math.random() * height;
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    bob.myPointDirection = Math.random() * 360;
  }
}

boolean collide(Floater a, Floater b) {
  float dx = (float)(a.myCenterX - b.myCenterX);
  float dy = (float)(a.myCenterY - b.myCenterY);
  return sqrt(dx*dx + dy*dy) < 20;
}
