void setup()
{
  size (500,500);
  strokeWeight(5);
}

void draw()
{
  for(int i = 5; i < height; i+=20)
  {
    stroke(255,0,0);
    line(0, i, width, i);
    line(i, 0, i, height);
    i+=20;
    stroke(0,0,255);
    line(0, i, width, i);
    line(i, 0, i, height);
    i+=20;
    stroke(0,255,0);
    line(0, i, width, i);
    line(i, 0, i, height);
  }
  
  for(int a=15; a < height; a+=20)
  {
    stroke(204,153,255);
    line(0, a, width, a);
    a+=20;
    stroke(255,204,153);
    line(0, a, width, a);
    a+=20;
    stroke(153,255,255);
    line(0, a, width, a);
  }
  for(int b=15; b < height; b+=20)
  {
    stroke(102,0,204);
    line(b, 0, b, height);
    b+=20;
    stroke(255,128,0);
    line(b, 0, b, height);
    b+=20;
    stroke(0,255,255);
    line(b, 0, b, height);
  }
  save("kleedje.jpg");
}
