color silver = #C0C0C0;
String speicherString;
String titel = "Song Titel: ";
TextFeld tFeld;
PFont arial;
int zeile = 28;
int offset = 5;
void setup(){
  arial = createFont("Arial", 24);
  size(600,400);
  tFeld = new TextFeld(titel, 150, 40, 360, zeile);
}

void draw(){
  background(30,30,40);
  tFeld.display(mouseX, mouseY);
}

void mousePressed(){
  if(tFeld.mouseOver(mouseX,mouseY)){
    tFeld.activate(true);
  } else {
    tFeld.activate(false);
  }

} 

void keyTyped(){
    String ablage;
    if(tFeld.isActive){
      if((int(key) == 8)&&(tFeld.vorne.length()>0)){
        int i = tFeld.vorne.length()-1;    

        ablage = tFeld.vorne.substring(0,i);
        tFeld.vorne = ablage;
        ablage = "";
      } else if(int(key) != 8){
        tFeld.vorne = tFeld.vorne + key;
        println(key);
        tFeld.inhalt =  tFeld.vorne + tFeld.hinten;
      }
  }
}  

void keyPressed(){
  String ablage;
  
    if(tFeld.isActive){
      if((keyCode == 37)&&(tFeld.vorne.length()>0)){
        int i = tFeld.vorne.length()-1;    
        int l = tFeld.vorne.length();
        ablage = tFeld.vorne.substring(i, l);
        tFeld.hinten =  ablage + tFeld.hinten;
        tFeld.vorne = tFeld.vorne.substring(0, i);
        ablage = "";
      }
      if((keyCode == 39)&&(tFeld.hinten.length()>0)){
        int i = tFeld.hinten.length();    

        tFeld.vorne = tFeld.vorne + tFeld.hinten.substring(0,1);
        tFeld.hinten = tFeld.hinten.substring(1,i);
      
      }
     //  if((keyCode == 8)&&(tFeld.vorne.length()>0)){
     //   int i = tFeld.vorne.length()-1;    

     //   ablage = tFeld.vorne.substring(0,i);
     //   tFeld.vorne = ablage;
     //   ablage = "";
     ////   tFeld.hinten = tFeld.hinten.substring(1,i);
      
     // }     
    }
}
  
