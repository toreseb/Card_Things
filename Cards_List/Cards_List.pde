

MakeDeck      MakeDeck1 = new MakeDeck();
DrawCard  DrawnCard = new DrawCard();
Points      Points1 = new Points();
ClickBox      Box1 = new ClickBox();
ArrayList<String> CardsDeck = new ArrayList<String>();
ArrayList<Integer> CardsValue = new ArrayList<Integer>();
int decks = 1;
int cards = 5;
int types = 2;
int drawncardvalue;
boolean startgame=true;
boolean pressed=true;
boolean cbox =false;
boolean lost = false;
boolean won = false;
int x=0;


void setup(){
  size(500,500);
  background(0);
  frameRate(30);
  MakeDeck1.Cards = cards;
  MakeDeck1.Types = types;
}

void draw(){
  clear();
  if (startgame){
    MakeDeck1.deck();
    startgame=false;
  }
    Box1.registrerKlik();
  if (pressed){
    cbox = true;
    Box1.cBox();
    cbox = false;
    DrawnCard.drawcard();
    Points1.points();
    println(CardsDeck);
    println(CardsValue);
  }else{
    Box1.cBox();
  }
  
  DrawnCard.makecard();
  Points1.checkpoints();
  if (CardsDeck.size() == 0 || lost || won){
    x++;
    text("New Game?",10,400);
    
    if (x ==2){
      startgame = true;
      lost = false;
      won = false;
      x = 0;
      Points1.gamewipe();
    }
  }

}
