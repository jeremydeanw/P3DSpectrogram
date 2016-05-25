import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;

EQ spectrogram;
Minim minim;
FFT fft;
AudioOutput out;
AudioPlayer mp3;

PImage fade;
boolean start = false;
boolean help = false;
float rectWidth,rectHeight;
int type = 1;
int alpha = 255;
int gain = -30;
float ver = 1.0;

void setup(){
  
  background(0);
  size(800,400,P3D); //RENDER 3D + USO CPU +FPS RENDER 2D - USO CPU
  frameRate(60);
  
  minim = new Minim(this);
  mp3 = minim.loadFile("1.mp3",2048);
  mp3.setGain(gain);
  fft = new FFT(mp3.bufferSize(),mp3.sampleRate()); //Permite el análisis de onda
  
  rectMode(CORNERS);
  spectrogram = new EQ();
  
  if(!start) { mp3.pause();background(0); }
}

void draw(){
  
  if(start){
    
    background(0); //Arregla bugs graficos
    spectrogram.drawEQ(); //Dibuja el espectrograma
    spectrogram.colors(type,alpha); //Pasa los argumentos predeterminados a colors()
    mp3.play();
    keys(); //Manejo de teclas
    if(!help){displayTexts();}
    bar(); //Barra de progreso
    if(help){help();}
  }  
}

void mouseClicked(){ start = true; }

void close(){
  
  out.close();
  minim.stop();
  super.stop();
}