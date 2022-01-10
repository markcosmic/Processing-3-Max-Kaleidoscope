int symmetry = 0;
int fade = 0;
int tFade = 0;
int cr, num, hu, al;
int mx,my,pmx,pmy,cmx,cmy,cpmx,cpmy;
boolean transparency = false;
boolean instOn = true;
boolean doFade = false;
float angle;
float strokeSize = 4; // use mouse wheel to change
float xoff;
boolean snowFlake = false;
boolean keyInput = false;
String fileName = "";
String telemTxt = "";
PGraphics img, inst, telemetry, undo,temp;
void setup() {
  size(720, 720,P3D);
  surface.setTitle("Max Kaleido");
  img = createGraphics(width, height, JAVA2D);
  img.beginDraw();
  img.endDraw();
  undo = createGraphics(width, height, JAVA2D); 
  undo.beginDraw();
  undo.endDraw(); 
  temp = createGraphics(width, height, JAVA2D);  
  temp.beginDraw();
  temp.endDraw();
  img.loadPixels();
  undo.loadPixels();
  temp.loadPixels();
  inst = createGraphics(width, height);
  telemetry = createGraphics(width/3, height/16, JAVA2D);
  num = 255;
  background(0);
  instructions();
}

void draw() {  
  if(!instOn){
  img.beginDraw();
  if(symmetry != 0){
  angle = (360 / symmetry); 
  }
  img.translate(width / 2, height / 2); 
  img.rotate(PI/2);
  if (mousePressed && mouseButton == RIGHT) {
    
    if(!snowFlake){
    img.colorMode(HSB,255);
    cr = 0;
    }else{
    img.colorMode(RGB,255);
    cr = 220;  
    }
    hu = int(map(sin(radians(xoff)), -1, 1, cr, 255));//color hue
    xoff += 1;
    num = 255;
    al = 100;
    img.stroke(hu,num,num, al);
       mx = (mouseX - width / 2);
       my = (mouseY - height / 2);
       pmx = (pmouseX - width / 2);
       pmy = (pmouseY - height / 2);
      correctRotation();  
      img.rotate(radians(angle));      
      float sw = strokeSize;
      img.strokeWeight(sw);      
    if(symmetry == 0){ 
      img.line(cmx, cmy, cpmx, cpmy);     

      image(img,0,0);
    }else{
    for (int i = 0; i < symmetry; i++) {
      img.rotate(radians(angle));     
      img.line(cmx, cmy, cpmx, cpmy);     
      img.pushMatrix();
      img.scale(1, -1);
      img.line(cmx, cmy, cpmx, cpmy); 
      img.popMatrix(); 
      image(img,0,0);
    }
    }
  } 
    img.loadPixels();
  if(doFade){
    fade+= 4;
    if(fade > 255){
     fade = 0;
     doFade = false;
    img.background(0);
    img.background(0,0);
    background(0);
    background(0,0);
    }
  }
  img.noStroke();
  img.fill(0,fade);
  img.rect(-width/2,-height/2,width,height);
  img.noFill();  
  img.endDraw();
  image(img,0,0);
  //input
  if(keyInput){
    tFade-= 3;
    if(tFade < 0){
     tFade = 255;
     keyInput = false;
    telemTxt = "";
    background(0,0);
    }
    telem();
    image(telemetry,0,0);
    }
  }else{
    image(inst,0,0);
  }
}

void mouseWheel(MouseEvent event) {
  if(!instOn){
    tFade = 255;
  float e = event.getCount();
  strokeSize = constrain(strokeSize += e, 1, 60);
  telemTxt = "Brush Size: " + round(strokeSize);
  keyInput = true;
  background(0,0); 
  }
}
void mouseReleased() {
    arrayCopy(temp.pixels,undo.pixels);
    undo.updatePixels();
    img.loadPixels();
    temp.loadPixels();
    arrayCopy(img.pixels,temp.pixels);
    temp.updatePixels();
}
