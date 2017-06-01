void displayTexts(){

  if(gain >= 5){text("Boost: +" + (gain-5),20,50);}
  else text("Ganancia: " + gain + " dB",20,50); //TEXTO GANANCIA
  
  text("Duración Total: " + mp3.length()/1000 +"s",20,60);
  text("Posición: " + mp3.position()/1000 +"s",20,70);
  
  text("FPS: " + frameRate , width-115,50); //FPS
  if(!help){text("¿Ayuda? Pulsa ENTER",width-145,60);}
  text("Version Dev "+ ver,width-115,90);
  
  
}

void info() {
    
    if(help == true){   
      
      ecualizador.colors(type,150);
      
      rect(80,40,width-80,height-40);
      fill(0);
      text("Menu de Información",width/2 - width/20,70);
      
      text("Control de Volumen:       -Vol (A)  +Vol (S)",100,100);
      text("Play: (Z) , Pausa (X)",100,120);
      text("Rebobinar: (R)",100,140);
      text("FWD (F) , REV (D)",100,160);
      
      if(gain >= 5){text("Boost: +" + (gain-5),100,200);}else text("Ganancia: " + gain + " dB",100,200);
      text("Duración Total: " + mp3.length()/1000 +"s",100,220);
      text("Posición: " + mp3.position()/1000 +"s",100,240);
  
      text("FPS: " + frameRate , 100,260); //FPS
      text("Version Dev "+ver,100,height - 60);
      
      text("Victor Prieto Laso",width-200,height-60);
      
      //META
      text("Title: " + meta.title(), width - 260, 100 );
      text("Author: " + meta.author(), width - 260, 120); 
      text("Album: " + meta.album(),  width - 260, 140);
      String GCopt = "OFF";
      text("GC Optmization: " + GCopt,width - 260, height-80);
      
    }
  }