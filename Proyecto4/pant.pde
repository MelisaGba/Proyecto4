class Pantalla {

  Pantalla() {
    for (j=0; j<estrellas.length; j++) {
      estrellas[j]= new Estrella();
    }
  }

  void cer() {
    
    image(you, 200, 100);
    play.display();
    play.funcion();
    pushMatrix();
    scale(.7, .7);
    image(pre, 1000, 515);
    popMatrix();
  }

  void un() {
    image(inst,0,0);
    botonu.display();
    botonu.funcion();
     pushMatrix();
    scale(.7, .7);
    image(pre, 1030, 515);
    popMatrix();
  }


  void dos() {

    //music_1.pause();

    //-----------------CAMARA-----------------
   
    opencv.loadImage(video);
    cam.display();
    

    //-------------------ESTRELLAS-------------


    pushMatrix();
    vel =6;
    translate(width/2, height/2);

    for (j=0; j<estrellas.length; j++) {
      estrellas[j].update();
      estrellas[j].display();
    }

    popMatrix();

    //--------------------METEOROS--------------

    meto.display();

    //--------------------PERDER----------------
    textSize(20);
    text(""+score, 700, 70);
  }

  void tre() {
    text("highScore: "+highScore, 350, 200);
  }


  void display() {
    switch(p_) {
    case 0:
      cer();
      break;
    case 1:      
      un();
      video.start();
      break;
    case 2:
      dos();
      break;
    case 3:
      // tre();
      break;
    }
  }
}
