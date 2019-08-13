class TextFeld{
  String name;
  int x;
  int y;
  int w;
  int h;
  boolean isActive = false;
  String inhalt = "I love to love you Baby";
  String vorne;
  String hinten;
  String cursorP ="|";
  color feldColor;  
  color textColor;
  TextFeld(String name_, int x_, int y_, int w_, int h_){
    name = name_.toUpperCase();
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    vorne = inhalt;   
    hinten = "";
  }
  boolean mouseOver(int mx, int my){
    if((mx > x) && (mx < x+w) && (my > y) &&(my < y+h)){
      return true;
    } else{
      return false;
    }
  }
  void activate(boolean act_){
    if (act_ == false){
      inhalt = vorne + hinten;
    }
    isActive = act_;
  }
  
  void update(){
  }
  
  void display(int mx, int my){
    if((mouseOver(mx,my))||(isActive)){
      stroke(silver);
    } else {
      noStroke();
    }

    if(isActive){
      feldColor = color(silver);
    //  stroke(silver);
      textColor = color(0);

    } else {
      feldColor = color(86,86,105);
      textColor = silver;
    }
    
  


    fill(feldColor);
    rect(x,y,w,h);
    fill(silver);
    textFont(arial, 20);
    textAlign(RIGHT,TOP);
    fill(silver);
    text(name, x,y);
    textFont(arial, 24);
    textAlign(LEFT,TOP);
    fill(textColor);
    if(isActive){
      text(vorne + cursorP + hinten, x, y);
    } else {
      text(inhalt, x,y);
    }
    fill(silver);
    textAlign(RIGHT,TOP);
    text("vorne: ", x, y+2*zeile);
    text("hinten: ", x, y+3*zeile);   
    textAlign(LEFT,TOP);
    text(vorne, x, y+2*zeile);
    text(hinten, x, y+3*zeile);   
    
   
  }
}
//  void keyTyped(){
//    if(isActive){
//      vorne = vorne + key;
//      println(key);
//      inhalt = hinten + vorne;
//    }

//  }
//}
