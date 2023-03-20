float cylinderHeight = 200;
float cylinderRadius = 100;
int cylinderResolution = 50;

PShape cylinderShape;

void setup() {
  size(800, 600, P3D);
  cylinderShape = createCylinder(cylinderHeight, cylinderRadius, cylinderResolution);
}

void draw() {
  background(255);
  translate(width/2, height/2, 0);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.02);
  shape(cylinderShape);
}

PShape createCylinder(float cylinderHeight, float radius, int resolution) {
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
/*float centerX, centerY, centerZ;
float radius = 400;

int numHanging = 20;

void setup() {
  size(800, 600, P3D);
  smooth();
  strokeWeight(2);
  noFill();
  centerX = width/2;
  centerY = 500;
  centerZ = 0;
}

void draw() {
  float angle = 0;
float amplitude = 50;
float frequency = 0.05;
float spacing = 10;
float radius = 100.0;
float pixelSep = 10.0;

  background(255);
  float rot = frameCount *0.001;
  camera(0, 0, 500, 0, 0, 0, 0, 1, 0);
  
  rotateY( rot );
  translate(0, 0, 0);
  
  float x = cos(angle) * radius;
  float y = sin(angle) * radius;
  
  float startY = y - radius + spacing -200;
  float endY = y + radius - spacing;
  
  for(int j = 0 ;j < numHanging;j++)
  {
      angle = map(j,0,numHanging,0,360);
      for (float i = startY; i < endY; i += spacing) 
      {
        float offset = radius;//map(i, startY, endY, -amplitude, amplitude);
        float waveX = offset * sin(angle );
        float waveY = i ;
        float waveZ = offset * cos(angle );
        
        pushMatrix();
        translate(waveX, waveY, waveZ);
        box(2);
        popMatrix();
      }
  }
  
}*/
