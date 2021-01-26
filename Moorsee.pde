import java.lang.Math;


String word = "";
String moword = "";
String showtext = "Bitte geben Sie einen Buchstaben oder eine Zahl ein";
String input = showtext;
String output = "";
int rectx = 400;
int recty = 200;
int rectbreadth = 300;
int rectheight = 80;
float L = 0;
float H = 0;
String Lout ="";
String Hout ="";
String Rout ="";


void setup(){
  frameRate(37);
  size(800, 600);
  background(0, 45, 113);
  fill(0, 123, 12);
  rectMode(CENTER);
  rect(rectx, recty, rectbreadth, rectheight);
  
  textAlign(CENTER);
  textSize(32);
  text(showtext, 400, 150);
  
}
void draw() {
  background(0, 45, 113);
  fill(0, 123, 12);
  rect(rectx, recty, rectbreadth, rectheight);
  fill(178, 45,0);
  textAlign(CENTER);
  textSize(32);
  text(input, 400, 150);
  text(output, 400, 300);
  textSize(20);
  text("Backspace zum Löschen", 670, 25);
  textSize(32);
  text("Übersetzen", 400, 215);
  text("L=" + Lout, 400, 350);
  text("H=" + Hout, 400, 400);
  text("R=" + Rout, 400, 450);
  // woerd.substring(2) nimmt wort ab 3. Buchstabe
    //string Morse(input);
}


void keyPressed(){
  switch (key){
    case 'a': word+='a'; moword+="*- ";     break;
    case 'b': word+='b'; moword+="-*** ";   break;
    case 'c': word+='c'; moword+="-*-* ";   break;
    case 'd': word+='d'; moword+="-** ";    break;
    case 'e': word+='e'; moword+="* ";      break;
    case 'f': word+='f'; moword+="**-* ";   break;
    case 'g': word+='g'; moword+="--* ";    break;
    case 'h': word+='h'; moword+="**** ";   break;
    case 'i': word+='i'; moword+="** ";     break;
    case 'j': word+='j'; moword+="*--- ";   break;
    case 'k': word+='k'; moword+="-*- ";    break;
    case 'l': word+='l'; moword+="*-** ";   break;
    case 'm': word+='m'; moword+="-- ";     break;
    case 'n': word+='n'; moword+="-* ";     break;
    case 'o': word+='o'; moword+="--- ";    break;
    case 'p': word+='p'; moword+="*--* ";   break;
    case 'q': word+='q'; moword+="--*- ";   break;
    case 'r': word+='r'; moword+="*-* ";    break;
    case 's': word+='s'; moword+="*** ";    break;
    case 't': word+='t'; moword+="- ";      break;
    case 'u': word+='u'; moword+="**- ";    break;
    case 'v': word+='v'; moword+="***- ";   break;
    case 'w': word+='w'; moword+="*-- ";    break;
    case 'x': word+='x'; moword+="-**- ";   break;
    case 'y': word+='y'; moword+="-*-- ";   break;
    case 'z': word+='z'; moword+="--** ";   break;
    case '1': word+='1'; moword+="*---- ";  break;
    case '2': word+='2'; moword+="**--- ";  break;
    case '3': word+='3'; moword+="***-- ";  break;
    case '4': word+='4'; moword+="****- ";  break;
    case '5': word+='5'; moword+="***** ";  break;
    case '6': word+='6'; moword+="-**** ";  break;
    case '7': word+='7'; moword+="--*** ";  break;
    case '8': word+='8'; moword+="---** ";  break;
    case '9': word+='9'; moword+="----* ";  break;
    case '0': word+='0'; moword+="----- ";  break;
    default: println("wrong entry");   break;
  }  
  input = word;
  
  if (keyCode == ENTER){
    uebfkt();
  }
  if (keyCode == BACKSPACE){
    output = "";
    input = "";
    word = "";
    moword = "";
    Lout ="";
    Hout ="";
    Rout ="";
  }
  /*
  if (key == 'b'){
    println("bededed");
    //mop.put('e', 2);
    //println(mop.get('e')); 
   
  }
  if (key == 'w'){
    println(word);
    println(word.length());
    println(moword);
  }
  */
}
void mousePressed(){
 if (mouseX > (rectx-0.5*rectbreadth) && mouseX < (rectx+0.5*rectbreadth) && 
     mouseY > (recty-0.5*rectheight) && mouseY < (recty+0.5*rectheight)){
     uebfkt();
  } 
}
void uebfkt(){
    L=0;
    H=0;
    output = moword;
    // map number of single characters in word
    HashMap<Character,Integer> map = new HashMap<Character,Integer>();
      String s = word;
      for(int i = 0; i < s.length(); i++){
         char c = s.charAt(i);
         Integer val = map.get(c);
          if(val != null){
            map.put(c, new Integer(val + 1));
          }else{
            map.put(c,1);
          }
      }
    for (char i : map.keySet()){  // runs trough all characters in the map
      int n=0;
      float prob = float(map.get(i))/word.length();
      switch (i){
        case 'a': n=4;     break;
        case 'b': n=6;     break;
        case 'c': n=8;     break;
        case 'd': n=5;     break;
        case 'e': n=1;     break;
        case 'f': n=6;     break;
        case 'g': n=7;     break;
        case 'h': n=4;     break;
        case 'i': n=2;     break;
        case 'j': n=10;    break;
        case 'k': n=7;     break;
        case 'l': n=6;     break;
        case 'm': n=6;     break;
        case 'n': n=4;     break;
        case 'o': n=9;     break;
        case 'p': n=8;     break;
        case 'q': n=10;    break;
        case 'r': n=5;     break;
        case 's': n=3;     break;
        case 't': n=3;     break;
        case 'u': n=5;     break;
        case 'v': n=6;     break;
        case 'w': n=7;     break;
        case 'x': n=8;     break;
        case 'y': n=10;    break;
        case 'z': n=8;     break;
        case '1': n=13;    break;
        case '2': n=11;    break;
        case '3': n=9;     break;
        case '4': n=7;     break;
        case '5': n=5;     break;
        case '6': n=7;     break;
        case '7': n=9;     break;
        case '8': n=11;    break;
        case '9': n=13;    break;
        case '0': n=15;    break;
        default: println("impossible error");   break;
      }
      L += prob*n;
      H += prob*(Math.log(prob)/Math.log(2));
    }
    if (H!=0) H=(-1)*H;
    Lout = str(L);
    Hout = str(H);
    Rout = str(L-H);
}
