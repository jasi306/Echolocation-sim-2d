class Fish{
  float  x,y,vx,vy;
  Fish(){
    x=width/2;
    y=height/2;
    vx=10;
    vy=0;
  }
  
  void be_serious(){
    
    float v=sqrt((float)(vx*vx+vy*vy));
    if(v>wave_speed_by_pixels*0.2){

      vx*=wave_speed_by_pixels*0.2/v;
      vy*=wave_speed_by_pixels*0.2/v;
    }
  }
  
  void move(){
    x+=vx;
    y+=vy;
    vx*=0.9;
    vy*=0.9;
    be_serious();
  } 
  void speed_randomize(){
     vx+= random(-width+(float)x  , width-(float)x)/width/2;
     vy+= random(-height-(float)y , height+(float)y)/height/2;
     be_serious();
  }
  void manual_speed(){
      if(isUp) vy-=0.02;
      if(isDown) vy+=0.02; 
      if(isLeft) vx+=0.02;
      if(isRight)  vx-=0.02;
      be_serious();
  }
  void circle_move(){
    
    
  }
  
  void accelerate_to_mouse(){
    vx=(mouseX-x)/10;
    vy=(mouseY-y)/10;
    be_serious();
  }
  
  void print(){
    
   pushMatrix();
   translate((float)x, (float)y-22);  
   scale(signum(vx),1);
   //rotate(PI*  (1+vy)/(1+vx) );
   image(submarine, -50, 0);
   popMatrix();
  
  }
  
  float surface(){
    
    
    return 100;
  }
}


int signum(double  f) {
  if (f > 0) return 1;
  if (f < 0) return -1;
  return 0;
} 
