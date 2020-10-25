
Circle circle;
Rectangle rectangle;

float state = random(1);
float xStartC = random(width);
float yStartC = random(height);
float xStartR = random(width);
float yStartR= random(height);
float xSpeedC = random(-3, 3);
float ySpeedC = random(-3, 3);
float xSpeedR = random(-3, 3);
float ySpeedR = random(-3, 3);
float diameter = random(25,75);

float R = random (255);
float G = random (255);
float B = random (255);

void setup() {
  size(300, 300);
  circle = new Circle(xStartC, yStartC, xSpeedC, ySpeedC, diameter, R, G, B, state);
  
  rectangle = new Rectangle (xStartR, yStartR, xSpeedR, ySpeedR, diameter, R, G, B, state);

}



void draw() {
  background(255);

  circle.move();
  circle.display();
  circle.overlap();
  
  rectangle.move();
  rectangle.display();


  
 }
