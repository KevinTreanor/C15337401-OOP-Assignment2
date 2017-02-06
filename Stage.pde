class Stage{
  
  PVector Pos;
  float x,y;

 
  Stage(float x, float y)
  {
    Pos = new PVector(x,y);
 
  }
  
  
  void display() 
  {
    

    fill(0,125,125,50);
    rect(Pos.x,Pos.y,width,10);
    rect(width/8,500,400,10);
    rect(width-(width/8),500,-400,10);
    rect((width/2)-100,300,200,10);
  }
  
 
}