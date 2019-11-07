class DrawCard {
  
  
  int rcard;
  String drawncard;
  
  
  
  void drawcard(){
    if (CardsDeck.size()==0){
      
    }else{
      rcard = int(random(0,CardsDeck.size()));
      drawncard = CardsDeck.get(rcard);
      drawncardvalue = CardsValue.get(rcard);
      CardsDeck.remove(rcard);
      CardsValue.remove(rcard);
    }
  }
  
  
  
  void makecard(){
    textSize(20);
    fill(255);
    
    if (drawncard == null){
      text("Draw a card!",10,20);
    }else{
      text("You've drawn " + drawncard + "!",10,20);
    }
  
  }
  

  
  
}
