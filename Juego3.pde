Maestro Benjamin;
Maestro ReyesEspino;

int Mono = 0;
int Mono1 = -1;
int Mono2 = -1;
int qx = 0;
int qy = 0;
int M1x = 10;
int M1y = 250;
int M2x = 450;
int M2y = 0;
int xataque=0;
int yataque = 50;
int xvida = 450;
int yvida = 5;
int pantalla = 0;
int turno = 1;
String Elemento[] = {"Fotografia","Programacion","Esteroides","Cine"};

//Nombre, vida, ataque, defensa, elemento, dibujo
 void setup(){
  Benjamin = new Maestro("Benjamin", 50, 10, 15, 2, 0);
  ReyesEspino = new Maestro("Reyes Espino", 50, 17, 20, 1, 1);
  
  size(900,650);
  background(0);
}

void draw(){
  if(pantalla == 0)
    {
      if(key==0)
      {
        background(0);
        fill(191,random(255),0);
        textSize(30);
        text("Presione ESPACE para Continuar", 200, 400);
        inicio();
      }
      else
      {
        key=0;
        pantalla=1;
      }
    }
    if(pantalla==1)
    {
      background(0);
      fill(191,random(120),0);
      rect(qx,qy,450,650);
      
      textSize(40); 
      fill(191,random(250),0);
      text("Seleccione Personaje N y M \nSeleccionando con ENTER\nAtaque Letra a",200, 400);
      Benjamin.Dibujar(0,50,0,0);
      ReyesEspino.Dibujar(1,400,0,0);
    }
    
    if(pantalla==2){
      background(255);
      fill(191,random(255),0);
      Benjamin.Dibujarvida();
      ReyesEspino.Dibujarvida();
      Benjamin.Dibujar(Mono1,M1x,M1y,1);
      ReyesEspino.Dibujar(Mono2,M2x,M2y,2);
      if(ReyesEspino.vida>0 && Benjamin.vida>0){
        if(key=='a'){
          if(turno==1) Benjamin.ataque1();
          if(turno==2) ReyesEspino.ataque1();
        }
      }
      
      if(Benjamin.vida<=0){
        textSize(32); 
        fill(191,random(255),0);
        text("Game Over \nWIN JUGADOR 2 \nNUEVA PARTIDA R", -250, -100);
      }
      if(ReyesEspino.vida<=0){
        textSize(32); 
        fill(191,random(255),0);
        text("Game Over \nWIN JUGADOR 1 \nNUEVA PARTIDA R", -250, -100);
      }
    }
}

class Maestro 
{
  String nombre;
  int vida;
  int ataque;
  int defensa;
  int elemento;
  int dibujo;
  int Jugador;
  
  Maestro(String nombre_, int vida_, int ataque_,int defensa_, int elemento_, int dibujo_)
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    defensa = defensa_;
    elemento = elemento_;
    dibujo = dibujo_;
  }

void Dibujar(int dibujo_,int x,int y, int jugador)
{
  Jugador=jugador;
  translate(x,y);
  switch(dibujo_){
   case 0: // Benjamin
    //translate(x,y); 
     noStroke(); 
    //NEGRO)
  fill(0);
  rect(240,20,10,10);
  rect(220,30,40,10);
  rect(160,40,60,10);
  rect(120,50,40,10);
  rect(250,40,10,10);
  rect(260,50,10,20);
  rect(120,60,10,10);
  rect(100,70,20,10);
  rect(270,70,10,10);
  rect(100,80,10,20);
  rect(160,80,110,10);
  rect(280,80,10,30);
  rect(150,90,10,10);
  rect(140,100,10,20);
  rect(90,100,10,40);
  rect(120,120,10,30);
  rect(270,110,10,40);
  rect(80,140,10,30);
  rect(100,170,10,20);
  rect(270,190,10,100);
  rect(70,170,10,10);
  rect(110,200,10,10);
  rect(60,180,10,40);
  rect(70,220,10,20);
  rect(90,230,10,10);
  rect(100,240,10,40);
  rect(110,280,10,20);
  rect(140,300,20,10);
  rect(160,310,10,10);
  rect(260,290,10,10);
  rect(250,300,10,10);
  rect(240,320,10,10);
  rect(200,340,30,10);
  
  rect(160,180,20,20);
  rect(240,180,20,20);
  
  //Piel
  fill(219,170,145);
  rect(120,230,60,70);
  rect(160,90,40,50);
  rect(200,90,40,80);
  rect(240,90,30,50);
  rect(120,150,30,80);
  rect(110,210,10,70);
  rect(130,120,30,30);
  rect(150,160,50,10);
  rect(150,100,10,20);
  rect(240,160,30,10);
  rect(180,280,30,20);
  rect(180,230,20,30);
  rect(250,230,20,30);
  rect(160,140,10,10);
  rect(190,140,10,10);
  rect(240,140,10,10);
  rect(260,140,10,10);
  rect(200,170,20,20);
  rect(230,170,10,10);
  rect(200,190,10,30);
  rect(240,210,10,10);
  rect(190,220,10,10);
  rect(250,220,10,10);
  rect(80,170,20,20);
  rect(70,180,10,40);
  rect(80,190,30,40);
  rect(100,180,10,10);
  rect(160,300,40,10);
  rect(150,220,10,10);
  rect(200,250,20,10);
  rect(240,280,20,20);
  rect(160,300,40,10);
  
  rect(170,310,10,10);
  rect(210,280,30,20);
  rect(220,300,20,10);
  rect(220,260,20,10);
  rect(210,270,40,10);
  rect(260,270,10,20);
  rect(180,260,10,10);
  rect(190,270,10,10);
  rect(200,260,10,10);
  rect(240,250,10,10);
  rect(250,260,10,10);
  rect(100,230,10,10);
  
  //Ojera
  fill(172,123,98);
  rect(150,170,50,10);
  rect(240,170,30,10);
  rect(150,200,10,20);
  rect(240,200,10,10);
  rect(160,210,30,20);
  rect(250,200,20,20);
  rect(190,200,10,20);
  rect(260,220,10,10);
  
  //Cafe
  fill(43,31,25);
  rect(160,50,100,30);
  rect(130,60,30,30);
  rect(220,40,30,10);
  rect(100,100,20,70);
  rect(90,140,10,30);
  rect(110,170,10,30);
  rect(120,100,20,20);
  rect(110,90,40,10);
  rect(110,80,20,10);
  rect(120,70,10,10);
  rect(260,70,10,10);
  rect(270,80,10,30);
  rect(170,140,20,10);
  rect(150,150,50,10);
  rect(250,140,10,10);
  rect(240,150,40,10);
  rect(180,270,10,10);
  rect(190,260,10,10);
  rect(200,270,10,10);
  rect(210,260,10,10);
  rect(240,260,10,10);
  rect(250,270,10,10);
  rect(260,260,10,10);
  rect(200,300,20,10);
  rect(240,300,10,20);
  rect(190,310,50,30);
  rect(180,310,10,20);
  rect(170,320,10,10);
  
  //nariz
  fill(203,130,93);
  rect(200,220,50,30);
  rect(210,190,30,30);
  rect(220,180,20,10);
  rect(220,170,10,10);
  rect(220,250,20,10);
  
  //percing
  fill(128);
  rect(80,230,10,20);
   break;
   
   case 1: //ReyesEspino
   //translate(200,0);
   noStroke();
  //NEGRO)
  fill(0);
  rect(180,30,80,10);
  rect(140,40,40,10);
  rect(110,50,30,10);
  rect(70,40,40,10);
  rect(80,50,10,10);
  rect(80,70,10,40);
  rect(70,110,10,50);
  rect(60,160,10,20);
  rect(50,180,10,50);
  rect(70,230,10,10);
  rect(90,260,10,30);
  rect(100,290,20,10);
  rect(130,320,30,10);
  rect(180,340,20,10);
  rect(200,350,50,10);
  rect(260,320,10,10);
  rect(280,280,10,30);
  rect(290,200,10,80);
  rect(300,120,10,50);
  rect(210,90,90,10);
  rect(150,80,60,10);
  rect(140,90,10,10);
  rect(130,100,10,40);
  rect(110,150,10,30);
  rect(100,200,10,10);
  rect(90,160,10,40);
  rect(280,50,10,20);
  rect(290,170,10,20);
  
  rect(150,170,20,20);
  rect(250,170,20,20);
  
  //Piel
  fill(235,198,171);
  rect(60,180,30,50);
  rect(70,160,20,20);
  rect(80,230,10,30);
  rect(90,200,10,60);
  rect(100,210,10,80);
  rect(110,180,10,20);
  rect(110,200,60,90);
  rect(120,150,20,50);
  rect(120,290,40,30);
  rect(130,140,10,10);
  rect(140,180,10,20);
  rect(140,100,160,40);
  rect(140,140,20,10);
  rect(140,150,10,10);
  rect(140,160,160,10);
  rect(150,90,60,10);
  rect(160,290,10,10);
  rect(170,150,20,10);
  rect(170,200,10,80);
  rect(180,190,10,80);
  rect(180,290,90,10);
  rect(180,300,40,10);
  rect(180,310,20,10);
  rect(190,180,10,80);
  rect(190,140,70,10);
  rect(190,280,70,10);
  rect(200,150,50,10);
  rect(200,170,50,40);
  rect(200,210,20,10);
  rect(200,240,20,20);
  rect(220,250,30,10);
  rect(240,300,30,10);
  rect(250,190,10,30);
  rect(250,240,10,20);
  rect(250,310,20,10);
  rect(260,200,30,70);
  rect(260,150,20,10);
  rect(270,270,20,10);
  rect(280,140,20,10);
  rect(280,190,10,10);
  rect(290,150,10,10);
  
  //Nariz
  fill(222,180,148);
  rect(200,220,60,20);
  rect(220,210,30,10);
  rect(220,240,30,10);
  
  //Cabello
  fill(131,92,62);
  rect(80,110,50,40);
  rect(80,150,30,10);
  rect(90,50,20,10);
  rect(90,60,50,40);
  rect(90,100,40,10);
  rect(100,160,10,40);
  rect(140,50,140,30);
  rect(140,80,10,10);
  rect(150,150,20,10);
  rect(160,300,10,20);
  rect(160,140,30,10);
  rect(160,320,100,10);
  rect(170,280,20,10);
  rect(170,290,10,30);
  rect(170,330,90,10);
  rect(180,270,90,10);
  rect(180,40,100,10);
  rect(190,150,10,10);
  rect(190,260,70,10);
  rect(200,310,50,10);
  rect(200,340,60,10);
  rect(210,80,90,10);
  rect(220,300,20,10);
  rect(250,150,10,10);
  rect(260,140,20,10);
  rect(260,280,20,10);
  rect(270,290,10,20);
  rect(280,70,20,10);
  rect(280,150,10,10);
  rect(300,100,10,20);
  
  //canas
  fill(155,128,107);
  rect(80,120,50,7);
  rect(80,140,50,7);
  rect(205,260,7,20);
  rect(205,330,7,20);
  rect(225,300,7,50);
  rect(230,260,7,20);
  rect(250,260,7,20);
  rect(250,320,7,30);
    
   break;
   
    }//switch
  }//Dibujar
  
  void Dibujarvida()
  {
    int ps=vida;//ps=puntos de salud
    if(Jugador==1)
    {
      fill(random(1255),255,0);
      rect(5,5,ps*5,50);
    }
    if(Jugador==2)
    {
      fill(random(255),255,0);
      rect(xvida,yvida,ps*5,50);
    }
  }
  
  void ataque1()
  {
    int y=(int)random(310);
    int r=(int)random(300);
    int danio=12;        
    int critico = (int)random(100);
    if(critico>=0 && critico<=30) danio=(int)(1.5*danio);
   
    //jugador 1 Ataque
    if(Jugador==1){
      fill(random(255),50,100);
      ellipse(xataque-700, 50, r, r);
      xataque = xataque+5;
      
      if(xataque==800){
        xvida=xvida+ danio*5;
        ReyesEspino.vida=ReyesEspino.vida-danio;
        xataque = 0;
        turno=2;
        key = 0;
      }
    }
    
    //jugador 2 Ataque
    if(Jugador==2){
      fill(random(255),50,100);
      rect(xataque, 50, r, r);
      xataque = xataque-5;
      
      if(xataque==-300){
        key = 0;
        turno=1;
        Benjamin.vida=Benjamin.vida-danio;
        xataque = 0;
      }
    }
  
  
  }
}//Clase


void inicio(){
  fill(155,95,240);
  noStroke(); 
}

void keyPressed(){
  if(pantalla==1)
  {
    if(Mono >=0 && Mono<=1)
    {
      if(key=='m')
      {
        if(Mono==1) return;
        qx=qx+400;
        Mono = Mono+1;
        key=0;
      }
      if(key=='n')
      {
        if(Mono==0) return;
        qx=qx-400;
        Mono = Mono-1;
        key=0;
      }
      if(Mono1==-1)
      {
        if(key=='\n')
        {
          Mono1 = Mono;
          Mono2 = -2;
          Mono = 0;
          qx = 0;
          qy = 0;
          key = 0;          
        }
      }
      if(Mono2==-2)
      {       
        if(key=='\n')
        {
          Mono2 = Mono;
          Mono = 0;
          qx = 0;
          qy = 0;
          key = 0;  
          pantalla = 2;
        }
      }

    }
  }
  if(pantalla==2)
  {
    if(ReyesEspino.vida<=0 || Benjamin.vida<=0)
    {
      if(key=='r')
      {
        pantalla=0;
        
      }
    }
  }
}