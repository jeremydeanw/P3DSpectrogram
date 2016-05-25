class EQ{
  
  PImage fade;
  float rectWidth,rectHeight;
  int colorVal;
  int incremento = 1;
  EQ(){  
  colorVal = 0;
  rectMode(CORNERS);
  fade = get(0,0, width,height);
  rectWidth = width*0.992;
  rectHeight = height*0.992;
}  
  
void drawEQ(){

//Crea el efecto 3D reduciendo la imagen generada
  tint(255,255,255,252);
  image(fade,(width-rectWidth)/2,(height-rectHeight)/2, rectWidth,rectHeight);
  noTint();
  
  // Color predeterminado cuando no se pasa el tipo de color
  colorMode(HSB);
  fill(colorVal, 255,255);
  stroke(colorVal, 255,225); 
  colorMode(RGB);
  colors(type,alpha);
  fft.forward(mp3.mix); //Procesa progresivamente el mp3 para analizar luego el espectro
  
  /*
  IGUALAR I+=X CON LA I+X PARA CONSEGUIR BARRAS
  SI LOS ANTERIORES VALORES DIFIEREN SE CONSIGUEN LINEAS
  */  
  
  for(int i = 0; i < fft.specSize(); i += 5){ // Nunca la i debe ser mayor que el espectro del mp3
  
    rect(i,height, i + 5, height - fft.getFreq(2*i)*1.5);//  getFreq(x*i) (tamaño ftt) & *x (multiplicador de altura)
  }
  
  fade = get(0,0, width,height); //Comenta esta linea si quieres ver el EQ en 2D
  colorVal += incremento;  //Hace cambiar el color
  if(colorVal > 255 || colorVal < 0)  { incremento *= -1;} //Hace que el color cambie, pero que cuando llegue a 255 no salte a 0;
}

void colors(int type ,int alpha){
  noStroke();
  if(type==1){  colorMode(HSB);  fill(colorVal, 255,255,alpha);  /*stroke(colorVal, 255,255);*/ colorMode(RGB); }
  if(type==2){  colorMode(RGB);  fill(colorVal, 255, colorVal,alpha); /* stroke(colorVal, 255, colorVal);*/ }
  if(type==3){  colorMode(RGB);  fill(colorVal, colorVal,255,alpha);  /*stroke(colorVal, colorVal,255);*/ }
  if(type==4){  colorMode(RGB);  fill(colorVal, 255-colorVal,255-colorVal,alpha);  /*stroke(colorVal, 255-colorVal,255-colorVal);*/ }
  if(type==5){  colorMode(RGB);  fill(255-colorVal, 255,colorVal,alpha);  /*stroke(255-colorVal, 255,colorVal);*/ }
  if(type==6){  colorMode(RGB);  fill(255, colorVal,255-colorVal,alpha);  /*stroke(255, colorVal,255-colorVal);*/ }
  if(type==7){  colorMode(RGB);  fill(255, 255,colorVal,alpha);  /*stroke(255, 255,colorVal); */}
  if(type==8){  colorMode(RGB);  fill(colorVal, 255-colorVal,colorVal,alpha);  /*stroke(colorVal, 255-colorVal,colorVal);*/ }
  if(type==9){  colorMode(RGB);  fill(255-colorVal, 255-colorVal,255,alpha); /* stroke(255-colorVal, 255-colorVal,255);*/ }
  }  
}