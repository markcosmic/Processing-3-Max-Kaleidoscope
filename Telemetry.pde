void telem(){
  telemetry.beginDraw();
    telemetry.background(0);
    telemetry.background(0,0);   
  telemetry.textAlign(CENTER,LEFT);
  telemetry.textSize(width/35);
  //telemetry.fill(0,tFade);
  telemetry.fill(0);
  telemetry.text(telemTxt,telemetry.width/1.99, telemetry.height/1.99);
  //telemetry.fill(255,tFade);
  telemetry.fill(255);
  telemetry.text(telemTxt,telemetry.width/2, telemetry.height/2);
  telemetry.noFill();
  telemetry.endDraw();
}
