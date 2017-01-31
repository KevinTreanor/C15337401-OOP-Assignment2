class Stage{
  
  float x1,x2,x3,x4;
  float y1,y2,y3,y4;
  
  Stage(float x1,float y1, float x2, float y2, float x3, float y3, float x4, float y4)
  {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.x3 = x3;
    this.y3 = y3;
    this.x4 = x4;
    this.y4 = y4;
  }
  
  
  void display() 
  {
    
    beginShape();
    vertex(x1,y1);
    vertex(x2,y2);
    vertex(x3,y3);
    vertex(x4,y4);
    
    endShape(CLOSE);
  }
  
}