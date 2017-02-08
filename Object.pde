//Abstract Game Object Class

abstract class Object
{
  PVector pos;
  PVector forward;
  float size;
  
  Object()
  {
    println("In GameObject default constructor");
  }
  
  abstract void display();  

} 