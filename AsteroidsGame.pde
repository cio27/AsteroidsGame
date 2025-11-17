Star[] stars = new Star[100];
Spaceship bob = new Spaceship();

public void setup() {
  size(300, 300);

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

public void draw() {
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }

  bob.show();
  bob.move();
}
public void keyPressed(){
 if (key == 'w') {
   bob.accelerate(.1);
 }
 if (key == 'r'){
  bob.turn(20);
 }
 if (key == 't'){
   bob.setX(300*(Math.random()));
   bob.getX();
   bob.setY(300*(Math.random()));
   bob.getY();
   bob.setSX(0);
   bob.getSX();
   bob.setSY(0);
   bob.getSY();
   bob.setDir(360*(Math.random()));
   bob.getDir();
 }
}
