//Sawyer Douthit | Sep 6 2023 | Timline

void setup() {
  size(900, 400);
  background(180);
}

void draw() {
  background(180);

  // Draw the title info
  fill(0);
  textSize(40);
  textAlign(CENTER);
  text("Historic Computer Systems", width/2, 60);
  textSize(30);
  text("by Sawyer Douthit", width/2, 100);

  // Draw the timline
  strokeWeight(3);
  line(100, 250, 800, 250);
  line(100, 245, 100, 255);
  line(800, 245, 800, 255);
  textSize(20);
  text("1930", 100, 240);
  text("2000", 800, 240);

  // Draw all hist events
  histEvent(200, 200, "ENIAC", true);
  histEvent(350, 200, "Event 2", true);
  histEvent(500, 200, "Event 3", true);
  histEvent(525, 350, "Event 4", false);
  histEvent(375, 350, "Event 5", false);
  histEvent(600, 200, "Event 6", true);
  histEvent(625, 350, "Event 7", false);
  histEvent(720, 350, "Event 8", false);
}

void histEvent(int x, int y, String title, boolean top) {
  text(title, x, y);
  if (top == true) {
    line(x, y, x+15, y+50);
  } else {
    line(x, y-20, x+15, y-100);
  }
}
