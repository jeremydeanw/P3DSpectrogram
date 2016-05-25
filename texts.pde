void displayTexts(){

  if(gain >= 5){text("Boost: +" + (gain-5),20,50);}
  else text("Ganancia: " + gain + " dB",20,50); //TEXTO GANANCIA
  
  text("Duración Total: " + mp3.length()/1000 +"s",20,60);
  text("Posición: " + mp3.position()/1000 +"s",20,70);
  
  text("FPS: " + frameRate , width-115,50); //FPS
  if(!help){text("¿Ayuda? Pulsa ENTER",width-145,60);}
  text("Version Dev "+ ver,width-115,90);
}