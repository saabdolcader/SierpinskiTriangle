public void setup()
{
  size(500, 500);
}
public void draw()
{
  background(230, 230, 250);
  sierpinski(100, 380, 300);
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20)
  {
    //first coord on right; second coord on left; third coord on top
    triangle(x, y, x + len, y, x + (len/2), y - len);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
