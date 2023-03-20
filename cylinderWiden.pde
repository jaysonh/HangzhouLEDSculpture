
PShape createCylinderWiden(float cylinderHeight, float radius, int resolution) {
  PShape cylinder = createShape();
  cylinder.beginShape(POINTS);
  
  float radius1 = radius;
  float radius2 = radius * 1.2;
  
  int pixelsPerStrip = 20;
  for (int i = 0; i <= resolution; i++) {
    
    for(int j = 0; j < pixelsPerStrip;j++)
    {
      float theta = map(i, 0, resolution, 0, TWO_PI);
      
      float r = radius1;
      
      if( j < pixelsPerStrip/4)
      {
          r = map( j, 0, pixelsPerStrip/4, radius2, radius);  
      }
      
      float x = cos(theta) * r;
      float y = sin(theta) * r;
      float z = map(j,0,pixelsPerStrip,0, cylinderHeight); // height
      
      cylinder.vertex(x, y, z);
    }
  }
  
  cylinder.endShape();
  return cylinder;
}
