class Spaceship extends Floater  
{   
 public Spaceship(){
   corners = 3;
   xCorners = new int [corners];
   yCorners = new int[corners];
   xCorners[0] = -8;
   yCorners[0] = -8;
   xCorners[1] = 16;
   yCorners[1] = 0;
   xCorners[2] = -8;
   yCorners[2] = 8;
   myColor = color(255, 255, 255);  // white
   myCenterX = 300 / 2;           // start in center
   myCenterY = 300 / 2;
   myXspeed = 0;
   myYspeed = 0;
   myPointDirection = 270;   
 }
 public double getX(){return myCenterX;}
 public double getY(){return myCenterY;}
 public double getDir(){return myPointDirection;}
 public double getSY(){return myYspeed;}
 public double getSX(){return myXspeed;}
 public void setX(double xx){myCenterX = xx ;}
 public void setY(double y){myCenterY = y ;}
 public void setDir(double dir){myPointDirection = dir ;}
 public void setSX(double xx){myXspeed = xx ;}
 public void setSY(double y){myYspeed = y ;}
 
 }
