class Stage{
  
  PVector Pos;
  PShape stage;
  float x,y;
  float x1,x2,x3,x4;
  float y1,y2,y3,y4;
  
  Stage(float x, float y/*,float x1,float y1, float x2, float y2, float x3, float y3, float x4, float y4*/)
  {
    Pos = new PVector(x,y);
    /*this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.x3 = x3;
    this.y3 = y3;
    this.x4 = x4;
    this.y4 = y4;*/
  }
  
  
  void display() 
  {
    stage = createShape();
    stage.beginShape();
    stage.vertex(x1,y1);
    stage.vertex(x2,y2);
    stage.vertex(x3,y3);
    stage.vertex(x4,y4);
    
    stage.endShape(CLOSE);
  }
  
  void render(){
    
    
    pushMatrix();
    translate(Pos.x,Pos.y);
    shape(stage,0,0);
    popMatrix();
  }
}