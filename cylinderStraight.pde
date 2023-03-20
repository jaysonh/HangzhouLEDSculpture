
PShape createCylinderStraight(float cylinderHeight, float radius, int resolution) {
  PShape cylinder = createShape();
  cylinder.beginShape(POINTS);
  int pixelsPerStrip = 20;
  for (int i = 0; i <= resolution; i++) {
    
    for(int j = 0; j < pixelsPerStrip;j++)
    {
      float theta = map(i, 0, resolution, 0, TWO_PI);
      float x = cos(theta) * radius;
      float y = sin(theta) * radius;
      float z = map(j,0,pixelsPerStrip,0, cylinderHeight);
      
      cylinder.vertex(x, y, z);
    }
  }
  
  cylinder.endShape();
  return cylinder;
}
