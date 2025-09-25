void setup() {
  size(1200, 600);
  background(30, 45, 60);  // mørk baggrund

  textAlign(LEFT, CENTER);
  textSize(24);
  fill(255);
  noStroke();

  // Tegn overskrifter
  drawHeader("GROUP A", 40, 40, color(0, 200, 255));
  drawHeader("GROUP B", 40, 320, color(255, 255, 0));
  drawHeader("GROUP C", 680, 40, color(0, 200, 255));
  drawHeader("GROUP D", 680, 320, color(255, 255, 0));

  // Tegn grupper
  drawGroup(40, 70, "RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY");
  drawGroup(40, 350, "PORTUGAL", "SPAIN", "MOROCCO", "IRAN");
  drawGroup(680, 70, "FRANCE", "AUSTRALIA", "PERU", "DENMARK");
  drawGroup(680, 350, "ARGENTINA", "ICELAND", "CROATIA", "NIGERIA");
}

// lille hjælper til overskrifter
void drawHeader(String title, float x, float y, color c) {
  fill(c);
  textSize(20);
  text(title, x, y);
  textSize(30); // tilbage til landenes størrelse bagefter
  fill(255);
}

// Funktion til at tegne en gruppe
void drawGroup(float x, float y, String a, String b, String c, String d) {
  String[] countries = {a, b, c, d};
  stroke(255);
  noFill();

  for (int i = 0; i < countries.length; i++) {
    rect(x, y + i * 50, 60, 30); // flagfelt
    fill(250);
    noStroke();
    text(countries[i], x + 80, y + i * 50 + 15);
    stroke(255);
    noFill();
  }
}
