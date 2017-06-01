class EQ{
  PImage fade;
  float rectWidth,rectHeight;
  int colorVal = 0;
  int inc = 1 ;
  
  EQ(){  
    fade = get(0,0, width,height);
    rectWidth = width*coef;
    rectHeight = height*coef;
  }  
  
  void drawEQ() //Dibuja el EQ con una variable para controlar luego con if's los colores
  {
    //creates the values needed to make the 3D effect 
    tint(255,255,255,252);
    image(fade,(width-rectWidth)/2,(height-rectHeight)/2, rectWidth,rectHeight);
    noTint();
    
    // COLOR DEFAULT PARA CUANDO NO SE HA SELECCIONADO CANCION
    //colorMode(HSB);
    //fill(colorVal, 255,255);
    //stroke(colorVal, 255,225); 
    //colorMode(RGB);
    colors(type,alpha);
    fft.forward(mp3.mix); //Avanza en el procesamiento de la mezcla de canales del mp3
    
    {
    }
    fade = get(0,0, width,height); //Comenta esta linea si quieres ver el EQ en 2D
    
    colorVal += inc;
    if(colorVal > 255 || colorVal < 0) { inc *= -1;} //Hace que el color cambie, pero que cuando llegue a 255 no salte a 0;
  }

  void colors(int type ,int alpha){
    switch (type) {
            case 1:  colorMode(HSB);  fill(colorVal, 255,255,alpha);  /*stroke(colorVal, 255,255);*/ colorMode(RGB);
                     break;
            case 5:  colorMode(RGB);  fill(colorVal, 255, colorVal,alpha); /* stroke(colorVal, 255, colorVal);*/
                     break;
            case 3:  colorMode(RGB);  fill(colorVal, colorVal,255,alpha);  /*stroke(colorVal, colorVal,255);*/
                     break;
            case 4:  colorMode(RGB);  fill(colorVal, 255-colorVal,255-colorVal,alpha);
                     break;
            case 2:  colorMode(RGB);  fill(255-colorVal, 255,colorVal,alpha);  /*stroke(255-colorVal, 255,colorVal);*/
                     break;
            case 6:  colorMode(RGB);  fill(255, colorVal,255-colorVal,alpha);  /*stroke(255, colorVal,255-colorVal);*/
                     break;
            case 7:  colorMode(RGB);  fill(255, 255,colorVal,alpha);  /*stroke(255, 255,colorVal); */
                     break;
            case 8:  colorMode(RGB);  fill(colorVal, 255-colorVal,colorVal,alpha);  /*stroke(colorVal, 255-colorVal,colorVal);*/
                     break;
            case 9:  colorMode(RGB);  fill(255-colorVal, 255-colorVal,255,alpha); /* stroke(255-colorVal, 255-colorVal,255);*/
                     break;
            default: colorMode(RGB);  fill(255,255,255); break;
    }
  }
  
  void bar(){
    pushMatrix();
    float totalpos = mp3.length();
    float pos = mp3.position();
    float relpos = (pos / totalpos);
    noStroke();
    translate(5,0);
    rect((width-10)*relpos,5,0,15);
    fill(0);
    text( "-" + (mp3.length()-mp3.position())/1000,(width-10)*relpos-40,15);
    popMatrix();
}
}