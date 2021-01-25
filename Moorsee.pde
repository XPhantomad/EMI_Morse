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
    output = moword;
    //Mittlere Wortlänge L = Sum(pi* Ni)
    HashMap<Character,Integer> map = new HashMap<Character,Integer>();
      String s = moword;
      for(int i = 0; i < s.length(); i++){
         char c = s.charAt(i);
         Integer val = map.get(c);
          if(val != null){
            map.put(c, new Integer(val + 1));
          }else{
            map.put(c,1);
          }
      }
      
}
