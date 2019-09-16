/*-----------------------------------------
 Programmer: Damien C.
 Program: Dante's inferno
 Description: Playing as Dante make your way to the 9th circle 
 of hell and defeat Satan
 
 */
import ddf.minim.*;

AudioPlayer song, song2, song3, song4,song5,song6, 
song7, song8, win;
Minim minim;

SplashScreen page;

color red = color(131, 3, 3);
String currentCase ="Start";
String output;
String choice1;
String choice2;
String choice3;
String choice4;

void setup() {
  size(1280, 720);
  page = new SplashScreen();
  minim = new Minim(this);
  song = minim.loadFile("Track1.mp3");//loads the tracks for the BGM
  song2 = minim.loadFile("Track2.mp3");
  song3 = minim.loadFile("Track3.mp3");
  song4 = minim.loadFile("Track4.mp3");
  song5 = minim.loadFile("Track5.mp3");
  song6 = minim.loadFile("Track6.mp3");
  song7 = minim.loadFile("Track7.mp3");
  song8 = minim.loadFile("Track8.mp3");
  win = minim.loadFile("Win.mp3");
}

void draw() {
  background(0);

  GameFlow();
}