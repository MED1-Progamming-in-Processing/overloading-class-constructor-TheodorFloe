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
  
  


//  circle = new Circle(random(width), random(height), random(-3,3), random(-3,3), 50);
Circle(float x, float y, float xSpeed, float ySpeed, float diameter, color circleColor, float state) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.diameter = diameter;
    this.circleColor = circleColor;
    this.state = state;
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
  
  void display(){
    if(state <= 0.5){
    fill(circleColor);
    ellipse(x, y, diameter, diameter); 
    
    }else{
    fill(rectColor);
    rect(x,y,diameter,diameter);
    }
  }
}
