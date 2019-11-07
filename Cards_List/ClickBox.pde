class ClickBox{

  int xPosition=250;  int yPosition=250;
  int Height=50;     int Length=50;
  boolean MDown=false;
    
  
  
  
  void cBox(){
    if (cbox){
    fill(100);
    }
    else{
    fill(255);
    }
    rect(xPosition,(yPosition),Length,Height);
    
    
    
  }
  
  void registrerKlik() {
      if (mousePressed && mouseX < xPosition+Length && mouseX > xPosition && mouseY > yPosition && mouseY < yPosition + Height && !MDown) {
        pressed = true;
        MDown = true;
      } else{
        pressed = false;
        
      }
      if(!mousePressed && MDown){
       MDown = false; 
      }
      


    
    
    
    
    
}
}
