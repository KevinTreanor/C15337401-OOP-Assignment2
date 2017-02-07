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

    
  }
  
  
  
}