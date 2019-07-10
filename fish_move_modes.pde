void fish_move(String mode){
    if(MODE=="RANDOM"){
      fish.move();
      fish.speed_randomize();
    }
    else if(MODE=="MANUAL"){
      fish.move();
      fish.manual_speed();
    }
    else if(MODE=="CIRCLE"){
      fish.circle_move();
    }
    else if(MODE=="MOUSE_FOLLOWER"){
      fish.accelerate_to_mouse();
      fish.move();
    }
  
}
