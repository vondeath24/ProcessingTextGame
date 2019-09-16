class SplashScreen {

  SplashScreen() {
  }

  void titlePage() {
    //title page

    fill(red);
    textAlign(CENTER);
    textFont(loadFont("font1.vlw"));
    textSize(69);
    text(output, width/2, height*1/3);

    //"Key press to continue
    fill(255);
    textFont(loadFont("font1.vlw"));
    textSize(36);
    text(choice1, width/2, height*2/3);
  }

  void interactivePage(int tempSize) {//adds a temp font so output can
    //fit in the textbox
    textFont(loadFont("font1.vlw"));
    //header
    textAlign(CENTER);
    rectMode(CENTER);
    textSize(tempSize);
    text(output, width/2, height*1/3, 800, 200);

    //assign numbers to choices
    text("(1)", width*1/4 - 150, height*5/8);
    text("(2)", width*1/4 - 150, height*10/12);
    text("(3)", width*5/7 - 150, height*5/8);
    text("(4)", width*5/7 - 150, height*10/12);

    //format of the choices
    fill(255);
    textSize(18);
    text(choice1, width/4, height*8/10, 250, 250);
    text(choice2, width/4, height*10/10, 250, 250);
    text(choice3, width*3/4, height*8/10, 250, 250);
    text(choice4, width*3/4, height*10/10, 250, 250);
    fill(red);
    //format of the header text
    textAlign(CENTER);
    rectMode(CENTER);
    textSize(tempSize);
    text(output, width/2, height*1/3, 800, 200);
  }

  void interactivePage2(int tempSize) {
    textFont(loadFont("font1.vlw"));
    //header
    textAlign(CENTER);
    rectMode(CENTER);
    textSize(tempSize);
    text(output, width/2, height*1/3, 800, 200);

    //number choices
    text("(q)", width*1/4 - 150, height*5/8);
    text("(w)", width*5/7 - 150, height*5/8);

    //choice format
    fill(255);
    textSize(18);
    text(choice1, width/4, height*8/10, 250, 250);
    text(choice2, width*3/4, height*8/10, 250, 250);
    fill(red);
    //format of header text
    textAlign(CENTER);
    rectMode(CENTER);
    textSize(tempSize);
    text(output, width/2, height*1/3, 800, 200);
  }



  //these are the pages that say "press 'c' to continue"
  void transitionPage(int tempSize) { //temporary font size
    textFont(loadFont("font1.vlw")); 
    fill(red);
    //format of the header text
    textAlign(CENTER);
    rectMode(CENTER);
    textSize(tempSize);
    text(output, width/2, height*1/3, 800, 200);

    fill(255);
    //"press key to continue!"
    textFont(loadFont("font1.vlw"));
    textSize(36);
    text(choice1, width/2, height*2/3);
  }
  
    //these are the pages that say "press 'space' to continue"
  void transitionPage2(int tempSize) { //temporary font size
    textFont(loadFont("font1.vlw")); 
    fill(red);
    //format of the header text
    textAlign(CENTER);
    rectMode(CENTER);
    textSize(tempSize);
    text(output, width/2, height*1/3, 800, 200);

    fill(255);
    //"press key to continue!"
    textFont(loadFont("font1.vlw"));
    textSize(36);
    text(choice1, width/2, height*2/3);
  }
  
  void endPage(int tempSize, int tempSize2) {
    textFont(loadFont("font1.vlw"));
    fill(red);
    //header
    textAlign(CENTER);
    rectMode(CENTER);
    textSize(tempSize);
    text(output, width/2, height*1/3, 800, 200);

    //Game Over
    fill(red);
    textFont(loadFont("font1.vlw"));
    textSize(tempSize2);
    text(choice2, width/2, height*3/4, 800, 200);

    //"Press 'R' to restart"
    fill(255);
    textFont(loadFont("font1.vlw"));
    textSize(36);
    text(choice1, width/2, height*4/5);
  }
  void winPage(int tempSize, int tempSize2) {
    textFont(loadFont("font1.vlw"));
    fill(red);
    //header
    textAlign(CENTER);
    rectMode(CENTER);
    textSize(tempSize);
    text(output, width/2, height*1/3, 1000, 200);

    //You win!
    fill(red);
    textFont(loadFont("font1.vlw"));
    textSize(tempSize2);
    text(choice2, width/2, height*3/4, 800, 200);

    //"Press 'R' to restart"
    fill(255);
    textFont(loadFont("font1.vlw"));
    textSize(36);
    text(choice1, width/2, height*4/5);
  }
  //a checkpoint made so halfway through you don't have to start all over
  void checkpoint(int tempSize, int tempSize2) {
    textFont(loadFont("font1.vlw")); 

    textAlign(CENTER);
    rectMode(CENTER);
    textSize(tempSize);
    text(output, width/2, height*1/3, 800, 200);

    //glad there's a checkpoint ;P???
    fill(red);
    textFont(loadFont("font1.vlw"));
    textSize(tempSize2);
    text(choice2, width/2, height*3/4, 800, 200);

    //press 'c' to continue

    fill(255);
    textFont(loadFont("font1.vlw"));
    textSize(36);
    text(choice1, width/2, height*4/5);
  }
}