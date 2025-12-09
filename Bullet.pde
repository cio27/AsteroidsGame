class Bullet extends Floater{
  public Bullet (Spaceship theShip){
  myCenterX = theShip.getX();
   myCenterY = theShip.getY();
   myPointDirection = theShip.getDir();
   accelerate(4.0);  
   color(0,255,0);
  }
  public void show(){
    color(0,255,0);
    ellipse((float)myCenterX, (float)myCenterY,10,10);
  }
  public float getX(){return (float)myCenterX;}
 public float getY(){return(float) myCenterY;}
}
