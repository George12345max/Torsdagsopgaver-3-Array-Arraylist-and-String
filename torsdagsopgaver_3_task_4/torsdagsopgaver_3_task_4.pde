// 4.b globalt array til 10 cirkler
// 4.b Add an array to the sketch that will be holding 10 Circle instances. (Circle being a datatype that you have not yet added)
Circle[] circles = new Circle[10];

void setup() {
  // 4.a sæt størrelse på canvas
  size(600, 400);
  
  // 4.i opret 10 cirkler i et loop
  for (int i = 0; i < circles.length; i++) {
    // giver hver cirkel lidt tilfældig position
    float x = random(width);
    float y = random(height);
    circles[i] = new Circle(x, y);
  }
}

void draw() {
  background(220);

  // 4.l loop gennem alle cirkler og kald move()
  for (Circle c : circles) {
    c.move(random(-2, 2), random(-2, 2)); // flyt cirklerne lidt tilfældigt
  }
}

// 4.c klasse Circle
class Circle {
  float xposition;
  float yposition;

  // 4.d constructor
  Circle(float xposition, float yposition) {
    this.xposition = xposition;
    this.yposition = yposition;
  }

  // 4.f metode til at vise cirklen
  void display() {
    ellipse(xposition, yposition, 30, 30);
  }

  // 4.k metode til at flytte cirklen
  void move(float dx, float dy) {
    xposition += dx;
    yposition += dy;
    display(); // tegn cirklen efter flytning
  }
}
