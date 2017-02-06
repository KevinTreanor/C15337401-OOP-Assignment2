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
    pushMatrix();
    stroke(0,0,255);
    fill(93,239,224,100);
    ellipse(pos.x,pos.y,rad,rad);
    translate(axis,yaxis);
    
    stroke(0);
    strokeWeight(3);
    fill(225,10,10);
    triangle(10,10,20,30,30,10);
    popMatrix();
    
  }
  
  
}