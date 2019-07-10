class Receiver{
  double  x,y;
  void print(){
    fill(212);
    ellipse((float)x,(float)y,10,40);
  }
  Receiver(double  xS,double  yS){
    x=xS;
    y=yS;
  }
}
