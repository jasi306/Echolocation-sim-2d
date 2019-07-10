void print_menu(){
  fill(150,150,200,180);
  rect(width/6,height/2,width/3, height*0.8);
  
  
  
  
  //menu
  if(menu_memory==0){
    int i=0;
    textAlign(CENTER, CENTER);
    
    fill(normal);
    textFont(headerb);
    fill(255);
    text( "Menu"  ,width/6, height*0.1 + height*0.8 /10*1); 
    fill(normal);
    textFont(Font1b);
    if (menu_pointer%4==i){
      fill(pointed);
      textFont(Font2b);
    }
    i++;
    
    text( "Fish Mode",width/6, height*0.1 + height*0.8 /10*3); 
    
    
    
    fill(normal);
    textFont(Font1b);
    if (menu_pointer%4==i){
      fill(pointed);
      textFont(Font2b);
    }
    i++;
    
    text( "Options" ,width/6, height*0.1 + height*0.8 /10*5); 
    
    fill(normal);
    textFont(Font1b);
    if (menu_pointer%4==i){
      fill(pointed);
      textFont(Font2b);
    }
    i++;
    
    text( "Credits",width/6, height*0.1 + height*0.8 /10*7); 
    
    fill(normal);
    textFont(Font1b);
    if (menu_pointer%4==i){
      fill(pointed);
      textFont(Font2b);
    }
    i++;
    
    text( "Exit",width/6, height*0.1 + height*0.8 /10*9); 
  }
  
    
    
   //MODE
  if(menu_memory==1){
    int i=0;
    textAlign(CENTER, CENTER);
    
    fill(normal);
    textFont(headerb);
    fill(255);
    text( "Fish Mode"  ,width/6, height*0.1 + height*0.8 /12*(i*2+1)); 
    
    
    fill(normal);
    textFont(Font1s);
    if (menu_pointer%5==i){
      fill(pointed);
      textFont(Font2s);
    }
    i++;
    
    text( "RANDOM",width/6, height*0.1 + height*0.8 /12*(i*2+1)); 
    if(MODE=="RANDOM"){
      stroke(pointed);
        
      strokeWeight(5);
      line(width/6- textWidth(MODE)/2, height*0.1 + height*0.8 /12*(i*2+1)+ textDescent()*4,width/6+ textWidth(MODE)/2,height*0.1 + height*0.8 /12*(i*2+1)+textDescent()*4);
      noStroke();
    }
    
    
    fill(normal);
    textFont(Font1s);
    if (menu_pointer%5==i){
      fill(pointed);
      textFont(Font2s);
    }
    i++;
    
    text( "MANUAL" ,width/6, height*0.1 + height*0.8 /12*(i*2+1)); 
    if(MODE=="MANUAL"){
      stroke(pointed);
        
      strokeWeight(5);
      line(width/6- textWidth(MODE)/2, height*0.1 + height*0.8 /12*(i*2+1)+ textDescent()*4,width/6+ textWidth(MODE)/2,height*0.1 + height*0.8 /12*(i*2+1)+textDescent()*4);
      noStroke();
    }
    fill(normal);
    textFont(Font1s);
    if (menu_pointer%5==i){
      fill(pointed);
      textFont(Font2s);
    }
    i++;
    
    text( "CIRCLE",width/6, height*0.1 + height*0.8 /12*(i*2+1)); 
    if(MODE=="CIRCLE"){
      stroke(pointed);
        
      strokeWeight(5);
      line(width/6- textWidth(MODE)/2, height*0.1 + height*0.8 /12*(i*2+1)+ textDescent()*4,width/6+ textWidth(MODE)/2,height*0.1 + height*0.8 /12*(i*2+1)+textDescent()*4);
      noStroke();
    }
    fill(normal);
    textFont(Font1s);
    if (menu_pointer%5==i){
      fill(pointed);
      textFont(Font2s);
    }
    i++;
    
    text( "MOUSE FOLLOWER",width/6, height*0.1 + height*0.8 /12*(i*2+1)); 
    if(MODE=="MOUSE_FOLLOWER"){
      stroke(pointed);
        
      strokeWeight(5);
      line(width/6- textWidth(MODE)/2, height*0.1 + height*0.8 /12*(i*2+1)+ textDescent()*4,width/6+ textWidth(MODE)/2,height*0.1 + height*0.8 /12*(i*2+1)+textDescent()*4);
      noStroke();
    }
        
    fill(normal);
    textFont(Font1b);
    if (menu_pointer%5==i){
      fill(pointed);
      textFont(Font2b);
    }
    i++;
    
    text( "BACK",width/6, height*0.1 + height*0.8 /12*(i*2+1)); 
  }
  
  
  
     //OPCIONS
  if(menu_memory==2){
    int i=0;
    textAlign(CENTER, CENTER);
    
    fill(normal);
    textFont(headerb);
    fill(255);
    text( "OPTIONS"  ,width/6, height*0.1 + height*0.8 /12*(i*2+1)); 
    
    
    textAlign(LEFT, CENTER);
    fill(normal);
    textFont(Font1s);
    if (menu_pointer%5==i){
      fill(pointed);
      textFont(Font2s);
    }
    i++;
    
        
    text( "FPS",width/36, height*0.1 + height*0.8 /12*(i*2+1)); 
    
        
    fill(normal);
    textFont(Font1s);
    if (menu_pointer%5==i){
      fill(pointed);
      textFont(Font2s);
    }
    i++;
    
    text( "CPS/FPS",width/36, height*0.1 + height*0.8 /12*(i*2+1)); 
    
    fill(normal);
    textFont(Font1s);
    if (menu_pointer%5==i){
      fill(pointed);
      textFont(Font2s);
    }
    i++;
    
    text( "Vw (px/cps)" ,width/36, height*0.1 + height*0.8 /12*(i*2+1)); 
    
    fill(normal);
    textFont(Font1s);
    if (menu_pointer%5==i){
      fill(pointed);
      textFont(Font2s);
    }
    i++;
    
    text( "T",width/36, height*0.1 + height*0.8 /12*(i*2+1)); 
    
    fill(normal);
    textFont(Font1s);
    if (menu_pointer%5==i){
      fill(pointed);
      textFont(Font2s);
    }
    i++;

    
    text( "BACK",width/36, height*0.1 + height*0.8 /12*(i*2+1)); 
  }
  
  
}
