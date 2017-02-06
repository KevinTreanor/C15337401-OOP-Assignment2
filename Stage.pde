class Stage{
  
  PVector Pos;
  float x,y;
  float x1 =0;
  float y1 = 700;
 
  Stage(float x, float y)
  {
    Pos = new PVector(x,y);
 
  }
  
  
  void display() 
  {
    

    fill(0,125,125,50);
    rect(x1,y1,width,10);
    rect(width/8,500,400,10);
    rect(width-(width/8),500,-400,10);
    rect((width/2)-100,300,200,10);
  }
  
 
}