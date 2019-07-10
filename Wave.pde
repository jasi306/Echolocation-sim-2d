class Wave{
  double  power;
  float  r,x,y;
  int reflected;
  color col;
  void expand(){
    r+=wave_speed_by_pixels;
  }
  
  Wave(float  X,float  Y,int Reflected,color Col,double  Power){
    x=X;
    y=Y;
    reflected=Reflected;
    col=Col;
    power=Power;
  }
  void print(){
    if(r<width*2){
      stroke(col);
      strokeWeight(2);
      noFill();
      ellipse(x,y,r,r); 
      noStroke();
    }
  }
  int reflecting_fish(double  X,double  Y){
  
    if (reflected==1) return 0;
    if (/* abs((X-x) * (X-x) + (fish.y-y) * (Y-y)-r*r/4 ) < 1000 */   /*(X-x) * (X-x) + (Y-y) * (Y-y)-r*r/4 > -1000000  && */ (X-x) * (X-x) + (Y-y) * (Y-y)-r*r/4 <  100){
      reflected=1;
      wavesPong[wave_counter_pong]=new Wave((float)X,(float)Y,3,color(0,255,0), power *fish.surface()/ (4*r*r*PI));
      wave_counter_pong++;
      return 1;
    }
    return 0;
  }
  int reflecting_receiver1(double  X,double  Y){
    if (reflected%2==1) {
      if (/* abs((X-x) * (X-x) + (fish.y-y) * (Y-y)-r*r/4 ) < 1000 */   /*(X-x) * (X-x) + (Y-y) * (Y-y)-r*r/4 > -1000000  && */ (X-x) * (X-x) + (Y-y) * (Y-y)-r*r/4 <  100){
        reflected-=1;
      
        measure[measure_counter[0]][0]=main_iterator_without_pauses-measure_counter[0]*Pings_interval;
        measure_counter[0]++;
        if(measure_counter[0]==min(measure_counter[0],measure_counter[1]) && measure_counter[1]!=0){
          DataUpdate2();
        }
        return -1;
      }
      return -1;
    }
    else return 0;
  }
  int reflecting_receiver2(double  X,double  Y){
    if (reflected>1) {
      if (/* abs((X-x) * (X-x) + (fish.y-y) * (Y-y)-r*r/4 ) < 1000 */   /*(X-x) * (X-x) + (Y-y) * (Y-y)-r*r/4 > -1000000  && */ (X-x) * (X-x) + (Y-y) * (Y-y)-r*r/4 <  100){
        reflected-=2;
        
        measure[measure_counter[1]][1]=main_iterator_without_pauses-measure_counter[1]*Pings_interval;
        measure_counter[1]++;
        if(measure_counter[1]==min(measure_counter[0],measure_counter[1]) && measure_counter[0]!=0){
          DataUpdate2();
        }
        
        return -1;
      }
    return -1;
    }
    else return 0;
  }
  
}
