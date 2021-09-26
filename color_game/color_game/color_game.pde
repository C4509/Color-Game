//Cierra Cheung
//Sep 16, 2021
 //mode framework
 int mode;
 final int intro = 0;
 final int options = 1;
 final int game= 2;
 final int pause = 3;
 final int gameover = 4;
 //score variables
 int score;
 int highscore;
 //50% chance variables
 int r;
int ra;
int ran;
 //color variables
 color pink = #E58989;
 color orange = #FA9C0F;
 color blue = #39B9EA;
 color red = #FF0000; 
 color green = #1B9319;
 color purple = #872AC6;
 //arrays
String[] words;
color[] colours;
int[] random;
//font variables
PFont gluten;
PImage[] gif;
int NumberOfFrames;
int f;
//timer variable
int timer;
 
 
 
 void setup(){
   size(800,800);
   //initialize colour array
   colours = new color[6];
   //initialize string array
   words=new String[6];
   //percentage
   random = new int[10];
   random[0]= 0;
   random[1]= 1;
   random[2]= 2;
   random[3]= 3;
   random[4]= 4;
   random[5]= 5;
   random[6]= 6;
   random[7]= 7;
   random[8]= 8;
   random[9]= 9;
   //string arrays
   words[0] ="Red";
   words[1] = "Orange";
   words[2] = "Blue";
   words[3] = "Green";
   words[4] = "Purple";
   words[5] = "Pink";
   //colour arrays
   colours[0] = red;
   colours[1] = orange;
   colours[2] = blue;
   colours[3] = green;
   colours[4] = purple;
   colours[5] = pink;
   //randomizing variables
   r = int(random(0,6));
   ra = int(random(0,6));
   ran = int(random(0,10));
   //font
   gluten = createFont("Gluten-Regular.ttf", 80);
   //gif variables
   NumberOfFrames = 46;
   gif = new PImage[NumberOfFrames];
   int i = 0;
   while(i < NumberOfFrames){
     gif[i] = loadImage("ezgif-2-2d04da00ecf3-gif-im/frame_"+i+"_delay-0.1s.gif");
     i++;
   }
   f= 0;
   timer = 0;
 }
 

   
   void draw() {
     //load gif
      image(gif[f], 0,0, width, height);
  f=f+1;
  if (f == NumberOfFrames){f=0;}
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==gameover) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
 
}
