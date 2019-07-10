
//define variables
int cps  =  200;     // obliczenia na sekunde
int fps_by_cps = 10;  //co ile obliczen wyswietlac klatke?
int Pings_interval=100;
float  wave_speed_by_pixels=2; //predkosc ryby w px/cps

float px_per_cps_to_m_per_s = 1490/wave_speed_by_pixels;




//main program iterator
int main_iterator;
int main_iterator_without_pauses;


int fpstemp1,fpstemp2,cpstemp3;
int cpstemp1,cpstemp2,fpstemp3;

//menu variables
int menu_memory;
int menu_pointer;
boolean is_paused;

String MODE="MOUSE_FOLLOWER";

PImage submarine;
//Objects variables
Ship ship;
Fish fish;
Wave[] wavesPing;
Wave[] wavesPong;
int wave_counter_ping;
int wave_counter_pong;
Receiver reciver1,reciver2;


//manual
boolean isUp,isDown,isLeft,isRight;

//maths variables
double deltaT;
int[][] measure;
int[] measure_counter;
double  c1,c2,c3,T1,T2,T3,T4,T5,xOld,yOld,x,y3,y4,x3,vx,vy;
double  T12,T22,T32,T42,T52;
double  x1,x2,almost_there0,almost_there1,almost_there2,delta,a,b,c,SQRTdelta,aa,bb,cc;
double up,down;


//fonts
PFont Font1s,Font1b,Font2s,Font2b,headerb,headers ,win; 
color normal,pointed;
int i;
void setup(){
  submarine = loadImage("submarine.png", "png");
  
  //y3 = new float[];
  cpstemp1=millis();
  fpstemp1=millis();
  normal = color(220,220,220,160);
  pointed = color(122,0,255,255);
  Font2b = createFont("Arial Bold", 50);
  Font1b = createFont("Arial", 50);
  Font2s = createFont("Arial Bold", 30);
  Font1s = createFont("Arial", 30);
  headerb = createFont("Arial Bold", 60);
  headers = createFont("Arial Bold", 40);
  win = createFont("Arial", 100);
  
  main_iterator=0;
  main_iterator_without_pauses=0;
  
  //main
  frameRate(cps);
  size(1000,1000);
  rectMode(CENTER);
  noStroke();  
  
  //program starting point
  ship = new Ship();
  fish = new Fish();

  wavesPing = new Wave[10000];
  wavesPong = new Wave[10000];
  reciver1 = new Receiver(ship.x-150,ship.y);
  reciver2 = new Receiver(ship.x+150,ship.y);
  wave_counter_ping = 0;
  wave_counter_pong = 0;

  
  measure= new int[10000][2];
  for(int i=0;i<100;++i){
    measure[i]=new int[2];
  }
  
  measure_counter=new int[2];
  measure_counter[0]=0;
  measure_counter[1]=0;
  
  //menu variables
  menu_memory=0;
  menu_pointer=0;
  is_paused=true;
}

void draw(){
  
  
  
  main_iterator++;
  FPS();
  //szukanie odbic od ryby
  if(main_iterator%fps_by_cps ==0 ){
    print_all();
    if(is_paused==true) print_menu();
  }

  
  if(is_paused==false){
    main_iterator_without_pauses++;
    for(i=0;i<wave_counter_ping;++i){
       wavesPing[i].reflecting_fish(fish.x,fish.y);
       wavesPing[i].expand();
    }
    //szukanie spotkan z odbiornikami
    for(i=0;i<wave_counter_pong;++i){
      wavesPong[i].reflecting_receiver1(reciver1.x,reciver1.y);
      wavesPong[i].reflecting_receiver2(reciver2.x,reciver2.y);
      wavesPong[i].expand();
    }
    
    fish_move(MODE);
    
    //fill(137, 63, 69);
 
    if(main_iterator%Pings_interval==0){
      ship.ping();
    }
  }

}
