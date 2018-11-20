class Meto {
  int i;
  Meto() {
  }
  void display() {

    for ( i=0; i<2; i++) {

      image(met1, px[i], py[i] - (met1.height/2+100));
      image(met1, px[i], py[i] + (met1.height/2+100));

      if (px[i]<0) {
        py[i]= (int)random(200, height-200);
        px[i]=width;
      }

      if (px[i] == 0) {
        score++;
        highScore=max(score, highScore);
      }

      if (abs(width/2-px[i])<25 && abs(y-py[i])>100) {
      p_=2;
    }
      px[i] -=5;
    }
  }
}
