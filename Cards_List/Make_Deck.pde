

class MakeDeck {
  

int Cards;
int Types;
int newcard1;
String newcard2;
int cardvalue;

void deck(){
  
  for(int i = 1;i<Cards+1;i++){
    newcard1 = i;
    
    
    if (newcard1 >=10){
      cardvalue = 10;
    }else if (newcard1 == 1){
      cardvalue = 11;
    }else{
      cardvalue = newcard1;
    }
    
    
    for(int j=1;j<Types+1;j++){
      if (j == 1){
        newcard2 = newcard1 + " of clubs";
      }
      if (j == 2){
        newcard2 = "spar "+newcard1;
      }
      if (j == 3){
        newcard2 = newcard1 + " of diamonds";
      }
      if (j == 4){
        newcard2 = newcard1 + " of hearts";
      }
      CardsDeck.add(newcard2);
      CardsValue.add(cardvalue);
      
    }
    
  }
  
}


}
