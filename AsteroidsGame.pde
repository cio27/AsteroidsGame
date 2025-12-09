Star[] stars = new Star[100];
Spaceship bob = new Spaceship();
ArrayList<asteroid> asteroids;
ArrayList<Bullet> shot = new ArrayList<Bullet>();
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
  }}
  for(int i = 0; i < shot.size(); i++){
  shot.get(i).move();
  shot.get(i).show();
  float f;
  for (int z = 0; z<asteroids.size();z++){
    f = dist(shot.get(i).getX(), shot.get(i).getY(), asteroids.get(z).getX(), asteroids.get(z).getY());
  if (f < 20){
  asteroids.remove(z);
  shot.remove(i);
break;}}
}

  bob.show();
  bob.move();
}



public void keyPressed(){
 if (key == 'w') {
   bob.accelerate(0.5);
   if (bob.getSX() > 6.1){
     bob.setSX(6.0);
 }
 if (bob.getSY() > 6.1){
     bob.setSY(6.0);
 }}
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
 if (key == 'e'){
   shot.add(new Bullet(bob));
 }
 
}
}
