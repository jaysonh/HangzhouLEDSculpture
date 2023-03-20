
PShape createRandHanging(float cylinderHeight, float radius, int resolution) {
  PShape cylinder = createShape();
  cylinder.beginShape(POINTS);
  int pixelsPerStrip = 20;
  for (int i = 0; i <= resolution; i++) {
    
     float theta  = random( 0, TWO_PI );
     float r      = random( 0, radius );
     int drawPixs = (int) random(pixelsPerStrip/2,pixelsPerStrip);
     for(int j = 0; j < drawPixs;j++)
     {
        float x = cos(theta) * r;
        float z = sin(theta) * r;
        float y = map(j,0,pixelsPerStrip,0, cylinderHeight);
        
        cylinder.vertex(x, y, z);
     } 
  }
  
  cylinder.endShape();
  return cylinder;
}
