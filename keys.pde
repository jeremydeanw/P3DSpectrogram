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
    mp3 = minim.loadFile("1.mp3",fftSamples);
    mp3.setGain(gain);
    meta = mp3.getMetaData();
    mp3.play();
  }

  if(key == '2'){
    mp3.pause();
    type = 2;
    mp3 = minim.loadFile("2.mp3",fftSamples);
    meta = mp3.getMetaData();
    mp3.setGain(gain);
    mp3.play();
  }

  if(key == '3'){
    mp3.pause();
    type = 3;
    mp3 = minim.loadFile("3.mp3",fftSamples);
    mp3.setGain(gain);
    meta = mp3.getMetaData();
    mp3.play();
  }

  if(key == '4'){
    mp3.pause();
    type = 4;
    mp3 = minim.loadFile("4.mp3",fftSamples);
    mp3.setGain(gain);
    meta = mp3.getMetaData();
    mp3.play();
  }

  if(key == '5'){
    mp3.pause();
    type = 5;
    mp3 = minim.loadFile("5.mp3",fftSamples);
    mp3.setGain(gain);
    meta = mp3.getMetaData();
    mp3.play();
  }

  if(key == '6'){
    mp3.pause();
    type = 6;
    mp3 = minim.loadFile("6.mp3",fftSamples);
    mp3.setGain(gain);
    meta = mp3.getMetaData();
    mp3.play();
  }

  if(key == '7'){
    mp3.pause();
    type = 7;
    mp3 = minim.loadFile("6.mp3",fftSamples);
    mp3.setGain(gain);
    meta = mp3.getMetaData();
    mp3.play();
  }

  if(key == '8'){
    mp3.pause();
    type = 8;
    mp3 = minim.loadFile("6.mp3",fftSamples);
    mp3.setGain(gain);
    meta = mp3.getMetaData();
    mp3.play();
  }

  if(key == '9'){
    mp3.pause();
    type = 9;
    mp3 = minim.loadFile("6.mp3",fftSamples);
    mp3.setGain(gain);
    meta = mp3.getMetaData();
    mp3.play();
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
    mp3.skip(-4000); //SLOW AS HELL   LIB LIMITATION bc the way mp3 works
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