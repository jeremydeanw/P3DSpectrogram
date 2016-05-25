void bar(){

  float totalpos = mp3.length()/1000;
  float pos = mp3.position()/1000;
  float relpos = pos / totalpos;
  noStroke();
  rect((width-5)*relpos,5,5,15);  
}