class Powerup extends Object{
  
  float x,y;
  boolean spawn = true;

 
  Powerup(float x, float y)
  {
    pos = new PVector(x,y);
 
  }
  
  
  void display() 
  {
    //Creates contestable 1 off powerup at the start of the game that increase speed 
    if(spawn == true)
    {
    strokeWeight(2);
 
    fill(10,10,225,100);
    ellipse(pos.x,pos.y,50,50);
    
    if((pos.x-50) <= axis && axis <= (pos.x+50))
          {
            speed  = speed +8;
            Score1 = Score1+5;
            spawn = false;
          }
    if((pos.x-50) <= desaxis && desaxis <= (pos.x+50))
          {
            desspeed  = desspeed +8;
            Score2 = Score2+5;
            spawn = false;
            
          }
    
    }
  }
  
  
}