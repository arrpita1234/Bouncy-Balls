
  Ball[] balls;
  
  boolean reactionStarted;
  
  void setup() {
    size(600,600);
    background(0);
    noStroke();
    reactionStarted = false;
    balls = new Ball[25];
    for( int i = 0; i < balls.length; i++ ){
      balls[i] = new Ball();
    }
  }

  void mouseClicked(){
    if( !reactionStarted){ 
      reactionStarted = true; 
      Ball b = new Ball();
      balls[0] = b;
      b.x = mouseX; 
      b.y = mouseY;
      b.grow(); 
    }
  }
  
  void checkState(){
    for(Ball b: balls){
      if(b.state == 1 || b.state == 2){
        for(Ball c : balls){
          if(dist(c.x, c.y, b.x, b.y) <= (c.rad + b.rad)/2 && ((!(c.state == 1) &&!(c.state == 2)) &&(c.state != 4))){c.state = 1;}
        }//end of for
      }//end of if
    }//end of for
  }
  
  void checkReaction(){
    boolean rx = true;
    for(Ball b: balls){
      if(b.state == 1 || b.state == 2){
        rx = false;
      }
    }
    if((rx)) reactionStarted = false;
  }
  void draw() {
    clear();
    for(int i = 0; i < balls.length; i++){
      Ball b = balls[i];
      
      if( reactionStarted ){
        if( b.state == 1){
          if(b.rad >= 70){
            b.state = 2;
            b.shrink();
          }
          else{b.grow();}
        }
        else{
          if(b.state == 2){
            b.shrink();
          }
          else if (b.state == 0){
              b.boundary();
              b.move();
            }
         }
         
      }
      else{
        
        b.boundary();
        b.move();
      }
      checkState();
    }
    checkReaction();
  }