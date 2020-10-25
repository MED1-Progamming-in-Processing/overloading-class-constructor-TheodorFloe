class Circle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float diameter;
  float radius = diameter/2;
  color circleColor;
  color rectColor = #F0F0FF;
  float state;

  float R;
  float G;
  float B;




  //  circle = new Circle(random(width), random(height), random(-3,3), random(-3,3), 50);
  Circle(float x, float y, float xSpeed, float ySpeed, float diameter, float R, float G, float B, float state) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.diameter = diameter;
    this.state = state;
    this.R=R;
    this.G=G;
    this.B=B;
  }


  void move() {
    x += xSpeed;
    if (x <= radius || x >= width-radius) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y <= radius || y >= height-radius) {
      ySpeed *= -1;
    }
  }

  void overlap() {
    float d=dist(circle.x, circle.y, rectangle.x, rectangle.y);
    if (d<diameter) {
      circle.R=random(255);
      circle.G=random(255);
      circle.B=random(255);
      rectangle.R=random(255);
      rectangle.G=random(255);
      rectangle.B=random(255);
    }
  }


  void display() {
    fill(R, G, B);
    ellipse(x, y, diameter, diameter); 

  }
}
