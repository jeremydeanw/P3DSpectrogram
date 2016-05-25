void help() {
    
    if(help == true){
      noStroke();
      
      spectrogram.colors(type,200);
      
      rect(80,40,width-80,height-40);
      fill(0);
      text("Menu de Ayuda",350,70);
      text("Control de Volumen:       -Vol (A)  +Vol (S)",100,100);
      text("Play: (Z) , Pausa (X)",100,120);
      text("Rebobinar: (R)",100,140);
      text("FWD (F) , REV (D)",100,160);
      
      if(gain >= 5){text("Boost: +" + (gain-5),100,200);}else text("Ganancia: " + gain + " dB",100,200);
      text("Duración Total: " + mp3.length()/1000 +"s",100,220);
      text("Posición: " + mp3.position()/1000 +"s",100,240);
  
      text("FPS: " + frameRate , 100,260); //FPS
      text("Version Dev "+ver,100,340);
      
      text("Victor Prieto Laso",600,340);
      
    }
  }