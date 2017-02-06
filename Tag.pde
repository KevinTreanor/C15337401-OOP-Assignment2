class Tag {
  
  PVector pos;
  float x,y;
  float rad = 100;
  boolean tagged;
  
   Tag(float x, float y)
  {
    pos = new PVector(x,y);
 
  }
  
  void display()
  {
    stroke(0,0,255);
    fill(93,239,224);
    ellipse(pos.x,pos.y,rad,rad);
    
    stroke(0);
    fill(10,255,10);
    triangle(100,100,200,100,100,200);
    
  }
  
  
}