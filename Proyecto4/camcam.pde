class Cam {

  Cam() {
  }
  void display() {
    Rectangle[] faces = opencv.detect();
   
    for (i = 0; i < faces.length; i++) {
      image(nav, faces[i].x+40, faces[i].y+40, width/2-250, y);
      stroke(255,0,0);
      noFill();
      rect(faces[i].x+40, faces[i].y+40, width/2-250, y);
    }
    
  }
}
