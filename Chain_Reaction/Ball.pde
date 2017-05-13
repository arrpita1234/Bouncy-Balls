class Ball{
  color c;
  float rad;
  float x;
  float y;
  float dx;
  float dy;
  int state;
  shape circle;
  Ball(){
   float r = random(256);
   float g = random(256); 
   float b = random(256);
   c = color(r, g, b);
   rad = 10;
   x = random((width - r) + r/2);
   y = random((height - r) + r/2);
   dx = random(10) - 5;    
   dy = random(10) - 5;     
   circle = ellipse(x,y,rad,rad);
   fill(c);
  }
  
  void grow(){
    circle = ellipse(x,y,rad+0.5,rad+0.5);
  }
    
  void move() {
   x = x + dx;
   y = y + dy;  
  }
  
}