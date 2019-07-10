class Ship{
  float  x;
  float  y;
  
  void print(){
    fill(0);
    triangle(x-width/20, y-height/32, x, y+height/32, x+width/20, y-height/32);
  }
    
  Ship(){
    x=width/2;
    y=height/8;
  }
  
  void ping(){
    wavesPing[wave_counter_ping]=new Wave(x,y,0,color(255,0,0),100);
    wave_counter_ping++;
  }
}
