public void setup() 
{
  size(1000,1000);
  ellipseMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(500,500,500);
}
public void myFractal(float x, float y, float radius){
  ellipse (x,y,radius,radius);
  fill(139,0,0);
  if(radius>2)
  {
    myFractal(x,y-radius/2,radius/2);
    myFractal(x,y-radius/2,radius/2);
    myFractal(x,y+radius/2,radius/2);
    myFractal(x-radius/2,y+radius/3,radius/2);
    myFractal(x+radius/2,y+radius/3,radius/2);
  }
} 
