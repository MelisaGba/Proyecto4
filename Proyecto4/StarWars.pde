class Estrella {

  float x, y, z;
  float px, py, pz;
  float life=255;
  Estrella() {
    x = random(-width, width);
    y = random(-height, height);
    z = random (width);
    pz= z;
  }
  void update() {
    z = z - vel;

    if (z < 1) {
      z= width;
      x = random(-width, width);
      y = random(-height, height);
      pz= z;
    }
  }

  void display() {
    fill(255, life);
    noStroke();

    float dx = map(x / z, 1, 0, 0, width);
    float dy = map(y / z, 0, 1, 0, height);

    float r = map(z, 0, width, 16, 0);

    float px = map(x / z, 1, 0, 0, width);
    float py = map(y / z, 0, 1, 0, height);

    pz=z;
    stroke(255, life);
    line(px, py, dx, dy);
  }
}
