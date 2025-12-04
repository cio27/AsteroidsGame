Star[] stars = new Star[100];
Spaceship bob = new Spaceship();
ArrayList<asteroid> asteroids;
public void setup() {
  size(300, 300);
  for (int i = 0; i < stars.length; i++) stars[i] = new Star();
  bob = new Spaceship();
  asteroids = new ArrayList<asteroid>();
  for (int i = 0; i < 20; i++){ asteroids.add(new asteroid());}
}

public void draw() {
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
for (int i = 0; i < asteroids.size(); i++){
  asteroids.get(i).show();
  asteroids.get(i).move();
  float d = dist(bob.getX(), bob.getY(),asteroids.get(i).getX(), asteroids.get(i).getY());
  if (d < 20){
  asteroids.remove(i);
  }
}

  bob.show();
  bob.move();
}
public void keyPressed(){
 if (key == 'w') {
   bob.accelerate(.1);
 }
 if (key == 'd'){
  bob.turn(20);
 }
 if (key=='a'){
   bob.turn(-20);
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
