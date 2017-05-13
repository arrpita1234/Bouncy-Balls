class Ball{
  color c;
  float rad;
  float x;
  float y;
  float dx;
  float dy;
  int state;
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
   fill(c);
   ellipse(x,y,rad,rad);
  }
  
  void grow(){
  ellipse(x,y,rad+0.5,rad+0.5);
  }
    
  void move() {
   x = x + dx;
   y = y + dy; 
   fill(c);
   ellipse(x,y,rad,rad);
  }
  
   void boundary(){
     if(this.x > width ||this.x < 0){
       dx = -dx + random(1) - random(1);
       if(dx > 10){dx = 5;}
       if(dx < -10){dx = -5;}
       //in case the balls go to fast that they go off of the screen
       if(this.x > width){x = width - 1;}
       if(this.x < 0){x = 1;}
     } 
     if(this.y > height ||this.y < 0){
       dy = -dy + random(1) - random(1);
       if(dy > 10){dx = 7.5;}
       if(dy < -10){dy = -7.5;}
       //in case the balls go to fast that they go off of the screen
       if(this.y > height){y = height - 1;}
       if(this.y < 0){y = 1;}
     }
   }


}