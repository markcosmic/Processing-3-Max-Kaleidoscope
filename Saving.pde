void fileSelected(File selection) {
  if (selection == null) {
    telemTxt = "User canceled.";
  } else {
    fileName = selection.getAbsolutePath();
    int testForSuffix = fileName.indexOf(".png");
    if(testForSuffix == -1){
      fileName = fileName + ".png";
    }
      telemTxt = "Image saved!";
      if(transparency){
      saveDataClear();
      }else{
      saveDataBlack();        
      }    
    }
      keyInput = true;
      tFade = 255;
}
void saveDataClear(){  
    img.save(fileName);
    delay(500);
}
void saveDataBlack(){  
    save(fileName);
    delay(500);
}
