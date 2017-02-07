class Stage extends Object{
  
  
  float x,y;

 
  Stage(float x, float y)
  {
    pos = new PVector(x,y);
 
  }
  
  
  void display() 
  {
    

    fill(0,125,125,50);
    rect(pos.x,pos.y,width,10);
    rect(width/8,500,400,10);
    rect(width-(width/8),500,-400,10);
    rect((width/2)-100,300,200,10);
  }
  
 
}