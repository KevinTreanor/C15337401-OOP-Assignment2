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
  
  void game()
  {
    noStroke();
    fill(93,239,224,100);
    ellipse(x,y,rad,rad);
    
  }
  
  
}