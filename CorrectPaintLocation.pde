//rotate where lines are drawn by 90degrees
public void correctRotation(){
      // Convert cartesian to polar
  float r = sqrt((mx*mx) + (my*my));
  float theta = (atan2(my,mx)) - PI/2;
  cmx = int(r * cos(theta));
  cmy = int(r * sin(theta));
  r = sqrt((pmx*pmx) + (pmy*pmy));
  theta = (atan2(pmy,pmx)) - PI/2;
  cpmx = int(r * cos(theta));
  cpmy = int(r * sin(theta)); 
}
