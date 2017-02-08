class Tag extends Object{
  
 
  float x,y;
  float rad = 200;
  boolean tagged = false;
  
   Tag(float x, float y)
  {
    pos = new PVector(x,y);
 
  }
  
  void display()
  {
    
    if(tagged == false)
    {
      if(keyPressed == true)
      {
        if(key==CODED)
        {
          if(keyCode == DOWN)
          {
            //Uses booleans to "Tag" the other player and has a push and pop matrix that translates the arrow to the player
            pushMatrix();
            translate((axis-30),(yaxis-20));
            stroke(0,0,255);
            fill(93,239,224,100);
            ellipse(pos.x,pos.y,rad,rad);
            popMatrix();
            if((axis-100) <= desaxis && desaxis <= (axis+100))
            {
              tagged = true;
              Score1++;
            }
          }
        }
      }
      pushMatrix();
      translate((axis+50),(yaxis-50));
      stroke(0);
      strokeWeight(3);
      fill(225,10,10);
      triangle(10,10,20,30,30,10);
      popMatrix();
        
      
    }
    else
    {
     if(keyPressed == true)
      {
       if(key == 's'|| key == 'S')
      {
      
          pushMatrix();
          translate((desaxis-30),(desyaxis-20));
          stroke(0,0,255);
          fill(93,239,224,100);
          ellipse(pos.x,pos.y,rad,rad);
          popMatrix();
          if((desaxis-100) <= axis && axis <= (desaxis+100))
          {
            tagged = false;
            Score2++;
          }
        }
      }
    
     
     pushMatrix();
     translate((desaxis+50),(desyaxis-50));
     stroke(0);
     strokeWeight(3);
     fill(10,10,225);
     triangle(10,10,20,30,30,10);
     popMatrix();
      
      
      
    }
  }
  
  
}