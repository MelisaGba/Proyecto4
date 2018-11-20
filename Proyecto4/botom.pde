class Boton {
  float x, y;
  float t;
  boolean over = false;
  boolean press = false;

  color norm = color(255, 233, 0);
  color enOver = color(0);
  color enPress = color(255, 233, 0);

  Boton(float x_, float y_, float t_) {
    this.x = x_;
    this.y = y_;
    this.t = t_;
  }

  void display() {
     if (press) {
      fill(enPress);
    } else if (over) {
      fill(enOver);
    } else {
      fill(norm);
    }
    strokeWeight(2);
    stroke(255, 233, 0);
    ellipse(this.x, this.y, this.t*6, this.t*3);
  }

  void funcion() {
  
    if (dist(this.x, this.y, mouseX, mouseY)<this.t/2) {
      if (mousePressed) {
        press = true;{
          p_=1;
         // music_2.loop();
      }
        over = false;
      } else {
        over = true;
        press = false;
      }
    } else {
      over = false;
      press = false;
    }
    
  }
}
class Botonu extends Boton{
  Botonu(float x_, float y_, float t_){
     super(x_,y_,t_);
  }
 
 void funcion() {
  
    if (dist(this.x, this.y, mouseX, mouseY)<this.t/2) {
      if (mousePressed) {
        press = true;{
          p_=2;
         // music_2.loop();
      }
        over = false;
      } else {
        over = true;
        press = false;
      }
    } else {
      over = false;
      press = false;
    }
    
  }
}
