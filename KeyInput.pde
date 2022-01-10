void keyPressed() {
  keyInput = true;
  tFade = 255;
    if (key == '+' || key == '=') {
      symmetry = constrain(symmetry+= 1 , 0, 60);
      telemTxt = "Symmetry is " + symmetry;
    } else if (key == '-' || key == '_') {
      symmetry = constrain(symmetry-= 1, 0, 60);
      telemTxt = "Symmetry is " + symmetry;
    }else if (keyCode == UP) {
      strokeSize ++;
      strokeSize = constrain(strokeSize, 1, 60);
      telemTxt = "Brush Size: " + round(strokeSize);
    } else if (keyCode == DOWN) {
      strokeSize --;
      strokeSize = constrain(strokeSize, 1, 60);
      telemTxt = "Brush Size: " + round(strokeSize);
    }else
  if (key == 'i' || key == 'I') {
    instOn = !instOn;
    background(0);
    background(0,0); 
  } else if (key == 't' || key == 'T') {
    transparency = true;
    selectOutput("Save with Transparent Background:", "fileSelected",dataFile("*.png"));
  } else if (key == 'b' || key == 'B') {
    transparency = false;
  selectOutput("Save with Black Background:", "fileSelected",dataFile("*.png"));
  }else if (key == 's' || key == 'S') {
    snowFlake = true;
    telemTxt = "SnowFlake Mode";
    symmetry = 6;
  }else if (key == 'c' || key == 'C') {
    snowFlake = false;
    telemTxt = "Color Mode";
  }else if (key == ' ') {
    keyInput = false;
    telemTxt = "";
    tFade = 0;
    doFade = true;
    return;
  }else if (key == 'u' || key == 'U') {
    undo.loadPixels();
    arrayCopy(undo.pixels, img.pixels);
    arrayCopy(undo.pixels, temp.pixels);
    img.updatePixels();
    telemTxt = "Undo";
  }else{
    keyInput = false;
    telemTxt = "";
    tFade = 0;
  }
    background(0,0);
}
