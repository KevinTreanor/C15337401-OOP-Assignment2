class Tag 
{
  int lives;
  PVector pos;
  float x,y;
  float x1=100;
  float y1 = 100;
  float rad = 100;
  PShape tagged;
  
   Tag(float x, float y)
  {
    pos = new PVector(x,y);
 
  }
  
  void game()
  {
    noStroke();
    fill(93,239,224);
    ellipse(x1,y1,rad,rad);
    
  }
  
  
}