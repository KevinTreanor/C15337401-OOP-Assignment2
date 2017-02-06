class Player extends Object
{
  PVector velocity;
  PVector accel;
  PVector force;
  float theta;
  
  char up, down, left, right, fire, jump, melee;
  int health;
  
  
  Player(float x, float y, float theta, float size, char up, char down, char left, char right, char fire, char melee)
  {
    println("In the player parameterised constructor");
    pos = new PVector(x, y);
    forward = new PVector(0, -1);
    accel = new PVector(0,0);
    velocity = new PVector(0,0);
    force = new PVector(0, 0);
    this.theta = theta;
    this.size = size;
    
    
    this.left = left;
    this.right = right;
    this.up = up;
    this.down = down;
    this.fire = fire;
    this.melee = melee;
    this.health = 5;
    
    
  }
  
  void render()
  {
    
  }
  
  void update()
  {
    //Key codes
    if (checkKey('a'))
    {
      theta -= 0.05f;
    }
    if (checkKey('d'))
    {
      theta += 0.05f;
    }
/* if (key == CODED) 
  {
    if (keyCode == RIGHT) 
    {
     // translate(axis,12);
      axis = axis+12;
      direction = false;
    }
    
    if (keyCode == LEFT) 
    {
      axis = axis-12;
      direction = true;
     
    }
    if(keyCode == UP)
     {
         yaxis = yaxis-250;
          
         
     }
}
     
    if (key == 'd'|| key == 'D') 
    {
      desaxis = desaxis+12;
      directiondes = true;
    }
    
    if (key == 'a' || key == 'A') 
    {
      desaxis = desaxis-12;
      directiondes = false;
     
    }
    if(key == 'w' || key == 'B')
     {
         desyaxis = desyaxis-250;
          
         
     }
 
  
  */

    
  }
  
  
  
}