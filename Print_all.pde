void print_all(){
  
fill(100,100,220);
    //woda
    rect(width/2, height/16*7+height/16*2,width,height/8*7);
    for(int i=0;i<wave_counter_ping;++i){
      wavesPing[i].print();
    }
    for(int i=0;i<wave_counter_pong;++i){
      wavesPong[i].print();
    }
    fill(220,220,255);//powietrze
    rect(width/2, height/16,width,height/8);
    ship.print();
    reciver1.print();
    reciver2.print();
    fish.print();
    textSize(30);
    
    
    /*
    if(measure_counter[0]>0)
    text(measure[measure_counter[0]-1][0],200,200);
    if(measure_counter[1]>0)
    text(measure[measure_counter[1]-1][1],200,400);
    */
    
    
    if(min(measure_counter[0],measure_counter[1])>0){
      fill(255);
      textAlign(LEFT);
      text("Pole 2D "+ deltaT+"|brak funkcji|"+"m^2",25,50);
      text("Odczyt sprzed "+ max(measure [min(measure_counter[0],measure_counter[1])-1][0],measure [min(measure_counter[0],measure_counter[1])-1][0])/wave_speed_by_pixels/cps + "sec",25,100);
      text("Czestotliwosc sygnalu "+Pings_interval/cps+" Hz",25,150);
      textAlign(RIGHT);
      //text("v Fali= "+ cps * wave_speed_by_pixels + "px/s",width-25,50);
      //text("v Sub= "+ "|Brak wzoru| " + "px/s",width-25,100);
      //text("v Sub= "+ vx+" "+vy + "px/cps",width-25,50);
      text("y= "+ (int)y3 +"px",width-25,350);
      text("x= "+ (int)x2 +"px",width-25,300);
      text("vx Sub= "+ vx*px_per_cps_to_m_per_s +"m/s",width-25,250);
      text("vy Sub= "+ vy*px_per_cps_to_m_per_s  + "m/s",width-25,200);
      text("v  Sub= "+ sqrt((float)(vy*px_per_cps_to_m_per_s *vy*px_per_cps_to_m_per_s+vx*px_per_cps_to_m_per_s*vx*px_per_cps_to_m_per_s))  + "m/s",width-25,150);
      text("v Fali= "+ wave_speed_by_pixels*px_per_cps_to_m_per_s + "m/s",width-25,100);
      text("1px = "+ 1490 /cps + "m",width-25,50);
      stroke(255);
      strokeWeight(2);
      noFill();
      
      //ellipse((reciver1.x+ship.x)/2,reciver1.y,measure [min(measure_counter[0],measure_counter[1])-1][0]/2*wave_speed_by_pixels, measure [min(measure_counter[0],measure_counter[1])-1][0]/2*wave_speed_by_pixels); 
      //ellipse((reciver2.x+ship.x)/2,reciver2.y,measure [min(measure_counter[0],measure_counter[1])-1][1]/2*wave_speed_by_pixels, measure [min(measure_counter[0],measure_counter[1])-1][1]/2*wave_speed_by_pixels); 


      
      //line( ship.x+d*compere(c1,c2) ,0,ship.x+d*compere(c1,c2),height);
      
      

      
      
      //ellipse((float)(ship.x-T5),(float)reciver1.y,(float)T1,(float)T2);      //<========================
      //ellipse((float)(ship.x+T5),(float)reciver2.y,(float)T3,(float)T4);      //<========================
      stroke(0,0,0);
      
      
      
      /*
      ellipse((float)(reciver1.x+ship.x)/2,(float)reciver1.y,(float)T22,(float)T12); 
      ellipse((float)(reciver2.x+ship.x)/2,(float)reciver2.y,(float)T42,(float)T32); 
      stroke(200,0,0);
      ellipse((float)(reciver1.x+ship.x)/2,(float)reciver1.y,(float)T12,(float)T22); 
      ellipse((float)(reciver2.x+ship.x)/2,(float)reciver2.y,(float)T32,(float)T42); 
      stroke(255);*/
      line( (float)(ship.x+x2)  , 0 , (float)(ship.x+x2) , height);    //<========================
      stroke(0,0,0);
      //line( (float)(ship.x+x3)  , 0 , (float)(ship.x+x3) , height);
      line( 0,(float)(ship.y+y3),width,(float)(ship.y+y3));        //<========================
      stroke(200,0,200);
      //line( 0,(float)(ship.y+y4),width,(float)(ship.y+y4));


      noStroke();
    }
    //measure [min(measure_counter[0],measure_counter[1])][0]
    
    textAlign(RIGHT);
    fill(255,255,255,200);
    text("Real cps="+(cpstemp3),width-25,height-50);
    text("Real fps="+(fpstemp3),width-25,height-100);
    text("real time/program time="+((float)(cpstemp3)/(float)(cps))*wave_speed_by_pixels,width-25,height-150);
    
}
int compere(double  a,double  b){
  if (a>b)
  return 1;
  return -1;
}
//min(measure_counter[0],measure_counter[1]);
