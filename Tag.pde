class Tag 
{
  int lives;
  PVector pos;
  float x,y;
  float rad = 100;
  PShape tagged;
  
   Tag(float x, float y)
  {
    pos = new PVector(x,y);
 
  }
  
  void display()
  {
    stroke(0,0,255);
    fill(93,239,224);
    ellipse(pos.x,pos.y,rad,rad);
    
  }
  
  
}