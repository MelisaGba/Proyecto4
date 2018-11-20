import gab.opencv.*;
import processing.video.*;
import java.awt.Rectangle;
import ddf.minim.*;

PImage met1, pre, nav, you,inst;
float vel;

int score = 0, highScore = 0;
int px[] = new int [2], py[] = new int [2];
int x= -200, y; 
int p_, j,i;

Estrella[] estrellas = new Estrella[800];


Pantalla pan;
Boton play;
Botonu botonu;
Meto meto;

//----------------AUDIO-----------

//Minim music;
AudioPlayer music_1;
AudioPlayer music_2;
//----------------VIDEO-----------
Movie movie;
Cam cam;

Capture video;
OpenCV opencv;

void setup() {
  size(850, 430);
  pan = new Pantalla();
  play= new Boton(742, 379, 18);
  botonu=new Botonu(760,379,18);
  meto= new Meto();
 cam = new Cam();

  
  //movie=new Movie(this, "intro.mp4");
  //movie.loop();
  
  //----------------AUDIO-----------
 /* music     = new Minim(this);
  music_1   = music.loadFile("int.mp3");
  music_1.setGain(2);
  music_1.loop();
  
  music     = new Minim(this);
  music_2   = music.loadFile("nav.mp3");
  music_2.setGain(2);
  music_2.pause();*/


  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);

  px[0]=700;
  py[0]=y=height/2;
  px[1]=900;
  py[1]=700;
  x = score =0;
 
  met1 = loadImage("met3.png");
  pre  = loadImage("pre.png");
  nav  = loadImage("nav1.png");
  you  = loadImage("you.png");
  inst = loadImage("inst.png");

}

void draw() {
  background(0);
  pan.display();
}

void captureEvent(Capture c) {
  c.read();
}
void movieEvent(Movie m) {
  m.read();
}
