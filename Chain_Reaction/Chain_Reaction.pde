
  Ball[] balls;
  
  boolean reactionStarted;
  
  void setup() {
    size(600,600);
    background(0);
    reactionStarted = false;
    balls = new Ball[25];
    for( int i = 0; i < balls.length; i++ ){
      balls[i] = new Ball();
    }
  }

  void mouseClicked(){
    if( !reactionStarted ){ balls[0].x = mouseX; balls[0].grow(); }
  }
  
  void draw() {
    clear();
    for( Ball b: balls ){
      if( reactionStarted ){
        if( b.state == 1){
          b.grow();
        }
      }
      else{
        b.boundary();
        b.move();
    }
      
    } 
  }