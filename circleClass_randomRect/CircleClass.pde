
Circle circle;
float state = random(1);

void setup() {
  size(300, 300);
  circle = new Circle(random(width), random(height), random(-3, 3), random(-3, 3), random(25,75), #FF0F0F, state);


}

void draw() {
  background(255);

  circle.move();
  circle.display();
 }
