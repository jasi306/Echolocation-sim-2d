void FPS(){
    fill(255);
    textFont(Font1s);

    cpstemp2++;
    if(millis() - cpstemp1 > 1000) {
      cpstemp3=cpstemp2;
      cpstemp1=millis();
      cpstemp2=0;
    }
    
    if(main_iterator%fps_by_cps==0){
      fpstemp2++;
    }
    
        
    if(millis() - fpstemp1 > 1000) {
      fpstemp3=fpstemp2;
      fpstemp1=millis();
      fpstemp2=0;
    }
}
