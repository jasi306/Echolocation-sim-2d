void useEnter(){
  
  if(is_paused==true)
  switch(menu_memory){
    case 0:
      switch(menu_pointer%4){
        case 0:
          menu_memory=1;
          menu_pointer=4;
        break;
        case 1:
          menu_memory=2;
          menu_pointer=4;
        break;
        case 2:
          
        break;
        case 3:
          exit();
        break;
      }
    break;
    case 1:
      switch(menu_pointer%5){
        case 0:
          MODE="RANDOM";
        break;
        case 1:
          MODE="MANUAL";
        break;
        case 2:
          
        break;
        case 3:
          MODE="MOUSE_FOLLOWER";
        break;
        case 4:
          menu_memory=0;
          menu_pointer=0;
        break;
      }
    break;
    case 2:
      switch(menu_pointer%5){
        case 0:
          
        break;
        case 1:
       
        break;
        case 2:
          
        break;
        case 3:
          
        break;
        case 4:
          menu_memory=0;
          menu_pointer=1;
        break;
      }
    break;
    
    
    
    
  }
}


void useSpace(){

  switch(menu_memory){
    case 0:
       is_paused=false;
    break;
    case 1:
      menu_memory=0;
      menu_pointer=0;
    break;
    case 2:
      menu_memory=0; 
      menu_pointer=1;
    break;
  }
  
  
}
void useRight(){
  if(menu_memory==2){
    switch(menu_pointer%5){
      case 0:
         cps++;
      break;
      case 1:
        fps_by_cps++;
      break;
      case 2:
        wave_speed_by_pixels+=0.1;
      break;
      case 3:
        Pings_interval++;
      break;
      case 4:
        
      break;
    }
  }
}

void useLeft(){
  if(menu_memory==2){
    switch(menu_pointer%5){
      case 0:
         cps--;
      break;
      case 1:
        fps_by_cps++;
      break;
      case 2:
        wave_speed_by_pixels-=0.1;
      break;
      case 3:
        Pings_interval--;
      break;
      case 4:
        
      break;
    }
  }
}
