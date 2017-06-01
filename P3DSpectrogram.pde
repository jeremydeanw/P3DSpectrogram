import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
EQ ecualizador;
Minim minim;
FFT fft;

AudioOutput out;
AudioPlayer mp3;
AudioMetaData meta;

PImage fade;


int type = 1;
int gain = -20;
int alpha = 200;

void setup()
{
  background(0);
  size(800,400,P3D); //RENDER 3D + USO CPU +FPS RENDER 2D - USO CPU
  frameRate(120);
  
  minim = new Minim(this);
  
  mp3 = minim.loadFile("1.mp3",fftSamples);
  meta = mp3.getMetaData();
  mp3.setGain(gain);
  mp3.play();
 
  
  out = minim.getLineOut(Minim.STEREO,44100);
  fft = new FFT(mp3.bufferSize(),mp3.sampleRate()); //Permite el análisis de onda
  rectMode(CORNERS);

  ecualizador = new EQ(); //Empieza el dibujado del EQ
  
  if(!start)
  {
    mp3.pause();
  }
}

void draw()
{
  if(!start)
  {
    background(0);
  }
  else
  {
    background(0);
    ecualizador.drawEQ();
    ecualizador.colors(type,alpha);
    
    if(!help){displayTexts();}
    ecualizador.bar();
    if(help){info();}
    
    keys();
    
    if(optTimer == 20){ System.gc();  optTimer = 0; } optTimer++;
  }  
}
// Start Button Parameters 
void mouseClicked()
{
  start = true; //
}

void close()
{
  out.close();
  minim.stop();
  super.stop();
}