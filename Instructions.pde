public void instructions(){
  inst.beginDraw();
  inst.noStroke();
  inst.colorMode(RGB);
  inst.fill(0,0,0);
  inst.rect(0,0,width,height);
  inst.noFill();
  inst.textAlign(CENTER,CENTER);
  inst.fill(118,0,0);
  inst.textSize(width/16);
  inst.text("Max Kaleido",width/1.99, height/10.9);
  inst.textSize(width/22.857); 
  inst.text("(instructions)",width/1.99, height/6.4); 
  inst.textSize(width/26.666);
  inst.text("\n\nPress c for color mode(default).\n" +
  "Press s for snowflake mode.\n" +
  "Press + or - to change symmetry.\n" +
  "Up and Down arrows or Mouse wheel\ncontrols the brush size.\n" +
  "Drag right click to draw.\n" +
  "Press u to undo.\n" +
  "Press space bar to clear.\n" +
  "Press b to save .png with black background.\n" +
  "Press t to save .png with transparent background.\n" +
  "Press i to start/continue.\n" +
  "Pressing i again shows these instructions.",width/1.99,height/1.99);
  inst.fill(255);
  inst.textSize(width/16);
  inst.text("Max Kaleido",width/2, height/11);
  inst.textSize(width/22.857); 
  inst.text("(instructions)",width/2, height/6.5); 
  inst.textSize(width/26.666);
  inst.text("\n\nPress c for color mode(default).\n" +
  "Press s for snowflake mode.\n" +
  "Press + or - to change symmetry.\n" +
  "Up and Down arrows or Mouse wheel\ncontrols the brush size.\n" +
  "Drag right click to draw.\n" +
  "Press u to undo.\n" +
  "Press space bar to clear.\n" +
  "Press b to save .png with black background.\n" +
  "Press t to save .png with transparent background.\n" +
  "Press i to start/continue.\n" +
  "Pressing i again shows these instructions.",width/2,height/2);
  inst.endDraw();  
}
