class Points{
  
  int points;
  
  
  
  
  
    void points(){
    points += drawncardvalue;
  }
  
  void checkpoints(){
    
    if (points <= 20){
      text("You have " + points + " points",10,50);
    }else if (points == 21){
      text("You Win",10,50);
      won = true;
    }else if(points > 21){
      text("You Lose",10,50);
      lost = true;
    }else{
      text("You have " + "0" + " points",10,50);
    }
  
  }
  
  void gamewipe(){
    points=0;
  }
  

}
