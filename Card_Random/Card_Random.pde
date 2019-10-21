int Cards = 2;
int Types = 2;
int Draw = 1;
int Card;
Boolean MDown = false;
Boolean GameReset = false;
int TSize = 20;
int Type; int CNumber;
int Points = 0;
int cardNow;
int[] cardWorth = new int[Cards*Types];
ArrayList<Integer> cardDrawn = new ArrayList <Integer>();
ArrayList<Integer> cardHand = new ArrayList <Integer>();
int cardCounter = 0;
boolean Same = true;
boolean Reset = false;
int sameTimes = 0;



void setup(){
  size(200,200);
  frameRate(60);  
  clear();
}


void draw(){
  
  if (cardDrawn.size() == 0){
    cardDrawn.add(0);
  }
  if (mousePressed && MDown == false){ 
    clear();
    MDown = true;
    
    if(GameReset == true){
      Points = 0;
      cardCounter = 0;
    }
    for (int f=0; f < Draw; f++){
      if (Same == true){
        CNumber = (int)random(1,Cards+1);
        Type = (int)random(1,Types+1);
        cardNow = 100 * Type + CNumber;
        sameTimes = 0;
        for (int l=0;l<1000;l++){
        if (Reset == true){
          break;
        }
          if (cardDrawn.get(l) != cardNow){
          cardDrawn.add(cardNow);
          sameTimes +=1;
          if (sameTimes == 1000){
            Reset = true;
            break;
          }
          Same = false;
          continue;
        }
        if (cardDrawn.get(l)==cardNow){
          Same = true;
          break;
        }
          
        }
        
      }
      }
      
      cardHand.add(cardNow);
      cardCounter++;
      println("CardDrawn"+cardDrawn);
      println("CardHand"+cardHand);
      
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
  if (MDown == true && !mousePressed){
      MDown = false;
  }
}
