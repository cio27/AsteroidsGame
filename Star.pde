class Star 
{
 private float myX;
  private float myY;

  public Star() {
    myX = random(width);
    myY = random(height);
  }

  public void show() {
    stroke(255);
    fill(255);
    ellipse(myX, myY, 3, 3);
  }
}
