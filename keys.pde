void keys(){
if(key == 'x'){
    mp3.pause();
  }
  else if(key == 'z'){    
    mp3.play();
  }
}

void keyPressed(){
  
  if(key == ESC){
    close();
  }
  
  if(key == '1'){
    mp3.pause();
    type = 1;
    mp3 = minim.loadFile("1.mp3",2048);
    mp3.setGain(gain);
    System.gc();
  }
  
  if(key == '2'){
    mp3.pause();
    type = 2;
    mp3 = minim.loadFile("2.mp3",2048);
    mp3.setGain(gain);
    System.gc();
  }
  
  if(key == '3'){
    mp3.pause();
    type = 3;
    mp3 = minim.loadFile("3.mp3",2048);
    mp3.setGain(gain);
    System.gc();
  }
  
  if(key == '4'){
    mp3.pause();
    type = 4;
    mp3 = minim.loadFile("4.mp3",2048);
    mp3.setGain(gain);
    System.gc();
  }
  
  if(key == '5'){
    mp3.pause();
    type = 5;
    mp3 = minim.loadFile("5.mp3",2048);
    mp3.setGain(gain);
    System.gc();
  }
  
  if(key == '6'){
    mp3.pause();
    type = 6;
    mp3 = minim.loadFile("5.mp3",2048);
    mp3.setGain(gain);
    System.gc();
  }
  
  if(key == '7'){
    mp3.pause();
    type = 7;
    mp3 = minim.loadFile("5.mp3",2048);
    mp3.setGain(gain);
    System.gc();
  }
  
  if(key == '8'){
    mp3.pause();
    type = 8;
    mp3 = minim.loadFile("5.mp3",2048);
    mp3.setGain(gain);
    System.gc();
  }
  
  if(key == '9'){
    mp3.pause();
    type = 9;
    mp3 = minim.loadFile("5.mp3",2048);
    mp3.setGain(gain);
    System.gc();
  }
  
  if(key == 's'){ 
    if(gain < 15){gain += 1;}
    mp3.setGain(gain);
  }
  if(key == 'a'){ 
    if(gain > -50){gain -= 1;}
    mp3.setGain(gain);
  }
  if(key == 'd'){
    mp3.skip(-2000);
  }
  if(key == 'f'){
    mp3.skip(4000);
  }
  if(key == 'r'){
    mp3.rewind();
  }
  if(keyCode == ENTER){
    if(help == false) {help = true;}else{help = false;}
  }
}