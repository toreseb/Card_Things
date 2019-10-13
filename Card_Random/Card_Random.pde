int Cards = 2;
int Types = 2;
int Draw = 1;
int Card;
Boolean MDown = false;
Boolean GameReset = false;
int TSize = 20;
int Points = 0;
int[] cardWorth = new int[Cards*Types];
int[] cardDrawn = new int[Cards*Types];
int cardCounter = 0;
boolean BreakAgain = false;



void setup(){
  size(200,200);
  frameRate(60);  
  clear();
}


void draw(){
  
  
  if (mousePressed && MDown == false){ 
    clear();
    MDown = true;
    if(cardCounter+1 == Cards*Types){
    noLoop();
    }
    if(GameReset == true){
      Points = 0;
      cardCounter = 0;
    }
    for (int f=0; f < Draw; f++){
      int CNumber = (int)random(1,Cards+1);
      int Type = (int)random(1,Types+1);
      int cardNow = 100*Type + CNumber;
      println("Now"+cardNow);
      for (int l=0;l<Cards*Types;l++){
        println(cardDrawn[l]);
        if (cardDrawn[l]==cardNow){
          println("Same");
          f-=1;
          BreakAgain = true;
          break;
          
        }
        
      }
      if(BreakAgain){
        break;
      }
      cardDrawn[cardCounter] = cardNow;
      cardCounter++;
      println(cardDrawn);
      
      if (Type == 1){
        println("You drew",CNumber,"of Hearts");
      }
      if (Type == 2){
        println("You drew",CNumber,"of Spades");
      }
      if (Type == 3){
        println("You drew",CNumber,"of Diamonds");
      }
      if (Type == 4){
        println("You drew",CNumber,"of Clubs");
      }
      
      Points = Points+CNumber;
      if (Points <= 20){
        textSize(TSize);
        text("You Have "+Points+" Points",20-TSize/2,100+TSize/2);
      }
      if (Points >= 22){
        textSize(TSize);
        text("You Lose!",50-TSize/2,100+TSize/2);
        GameReset = true;
      }
      if (Points == 21){
        textSize(TSize);
        text("You Win!",50-TSize/2,100+TSize/2);
        GameReset = true;
      }
    }
  }
  if (MDown == true && !mousePressed){
      MDown = false;
  }
}
