void DataUpdate2(){

      c1=measure [min(measure_counter[0],measure_counter[1])-1][0]*wave_speed_by_pixels;
      c2=measure [min(measure_counter[0],measure_counter[1])-1][1]*wave_speed_by_pixels;
      c3=150;
      
      T5=c3/2;
      
      T1=(c1-c3)/2;
      T2=sqrt((float)(c1*c1-c3*c3))/2;
      T3=(c2-c3)/2;
      T4=sqrt((float)(c2*c2-c3*c3))/2;
    
      a=(T3*T3*T2*T2*4-T1*T1*T4*T4*4);
      b=(T3*T3*T2*T2*4+T1*T1*T4*T4*4)*4*T5* 2*-1;
      c=(T3*T3*T2*T2*4-T1*T1*T4*T4*4)*8*T5*T5 -  T1*T1*T3*T3*(T2*T2-T4*T4)*4;

      delta=(b*b)-(4*a*c);

      //x1= (b -sqrt(delta)) /  (2*a);
      x2= (b +sqrt((float)(delta))) /  (2*a);
      //x=x2;
      if(Double.isNaN(x2)) x2=ship.x;
      //ship.x-T5/4,reciver1.y,T1,T2/2
      y3=sqrt( (float)  ((1 - ( (x2*2-T5)*(x2*2-T5) / (T1*T1) ) ) *(T2*T2)/4 )) ;       
      //y3



      
      
      
      
      up=0;
      down=width;
      /*
      while((up+down)>=10 ){
        if(((x2-T5)*(x2-T5)/T1/T1 + (up+down)/2*(up+down)/2/T2/T2 )>1){
          up=(up+down)/2-1;
        }
        else{
          if(((x2-T5)*(x2-T5)/T1/T1 + (up+down)/2*(up+down)/2/T2/T2 )<1){
            down=(up+down)/2+1;
          }
          
          else{

          }
        }

      }
      */
      //y3=(up+down)/2;
      /*
      up=0  ;
      down=width;
      while((up+down)>=10 ){
        if(((x2+T5)*(x2+T5)/T3/T3 + (up+down)/2*(up+down)/2/T4/T4 )>1){ 
          up=(up+down)/2;
        }
        else{
          if(((x2+T5)*(x2+T5)/T3/T3 + (up+down)/2*(up+down)/2/T4/T4 )<1){
            down=(up+down)/2;
          }
        
        else {
          up=(up+down)/2;
        }
        }
        
      }
      y4=(up+down)/2;
    */
      x2=wavesPong[i].x-ship.x;     //<<==========================
      y3=wavesPong[i].y-ship.y;     //<<==========================
      
      /*
      deltaT=(  sqrt((float)(x2*x2+y3*y3))/wave_speed_by_pixels +Pings_interval -  sqrt((float)((xOld*xOld)+(yOld*yOld)))/wave_speed_by_pixels )  ;
      vx= (x2-xOld)/deltaT;
      vy=-(y3-yOld)/deltaT;
      */
      
      int ostatni_odczyt=min(measure_counter[0],measure_counter[1])-1;
      if  (ostatni_odczyt>1){
        vx= (x2-xOld)/ ((measure [ostatni_odczyt][0])/2+Pings_interval - (measure [ostatni_odczyt-1][0])/2);
        vy=-(y3-yOld)/ ((measure [ostatni_odczyt][0])/2+Pings_interval - (measure [ostatni_odczyt-1][0])/2);
      }
      
      xOld=x2;
      yOld=y3;
      /*
      
      c1=measure [min(measure_counter[0],measure_counter[1])-1][0]*wave_speed_by_pixels;
      c2=measure [min(measure_counter[0],measure_counter[1])-1][1]*wave_speed_by_pixels;
      c3=150;
      
      T52=c3/2;
      
      T22=(c1-c3)/2;
      T12=sqrt((float)(c1*c1-c3*c3))/2;
      T42=(c2-c3)/2;
      T32=sqrt((float)(c2*c2-c3*c3))/2;
      
      a=(T32*T32*T22*T22*4-T12*T12*T42*T42*4);
      b=(T32*T32*T22*T22*4+T12*T12*T42*T42*4)*4*T52* 2*-1;
      c=(T32*T32*T22*T22*4-T12*T12*T42*T42*4)*8*T52*T52 -  T12*T12*T32*T32*(T22*T22-T42*T42)*4;

      delta=(b*b)-(4*a*c);

      //x1= (b -sqrt(delta)) /  (2*a);
      x3= (b +sqrt((float)(delta))) /  (2*a);
      */
      

}
