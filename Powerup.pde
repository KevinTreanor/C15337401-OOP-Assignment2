class Powerup extends Object{
  
  float x,y;

 
  Powerup(float x, float y)
  {
    pos = new PVector(x,y);
 
  }
  
  
  void display() 
  {
    strokeWeight(2);
 
    fill(10,10,225,100);
    ellipse(pos.x,pos.y,50,50);
    
    if((pos.x-50) <= axis && axis <= (pos.x+50))
          {
            speed  = speed +8;
          }
    if((pos.x-50) <= desaxis && desaxis <= (pos.x+50))
          {
            desspeed  = desspeed +8;
          }
    
    
  }
  
  
}