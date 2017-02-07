class Powerup extends Object{
  
  float x,y;

 
  Powerup(float x, float y)
  {
    pos = new PVector(x,y);
 
  }
  
  
  void display() 
  {
    fill(225,10,10);
    ellipse(pos.x,pos.y,100,100);
    fill(10,10,225);
    ellipse(pos.x,pos.y,100,100);
  }
  
  
}