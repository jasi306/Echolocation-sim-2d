void keyPressed() {
  
  

  if(is_paused==false && keyCode==' '){
    is_paused=true;
  }
  
  else if (is_paused==true){
    if(keyCode==ENTER){
      useEnter();
    }
    if(keyCode==' '){
      useSpace();
    }
    if(keyCode==LEFT){
      useLeft();
    }
    if(keyCode==RIGHT){
      useRight();
    }
    if(keyCode==UP){
      menu_pointer--; 
      if(menu_pointer<0) menu_pointer+=20;
    }
    if(keyCode==DOWN){
      menu_pointer++; 
    }
  }
    
    


  /*if(keyCode==82){
    setup();
  }*/

  setMove(keyCode, true);
}


void keyReleased() {
  setMove(keyCode, false);
}

boolean setMove(int Key, boolean b) {
  switch (Key) {
  case UP:
    return isUp = b;
  case DOWN:
    return isDown = b;
  case LEFT:
    return isRight = b;
  case RIGHT:
    return isLeft = b;
  default:
    return b;
  }

}
