float cylinderHeight = 400;
float cylinderRadius = 100;
int cylinderResolution = 50;

PShape cylinderShape;

void setup() {
  size(800, 600, P3D);
  cylinderShape = createRandHanging(cylinderHeight, cylinderRadius, cylinderResolution);
  camera(0, 0, 500, 0, 0, 0, 0, 1, 0);
}

void draw() {
  background(0);
  
  translate(0,-200, 0);
    
  rotateX(map(mouseY,0,height,-0.5, 0.5));
  rotateY(map(mouseX,0,width, 0, TWO_PI));
  shape(cylinderShape);
}
