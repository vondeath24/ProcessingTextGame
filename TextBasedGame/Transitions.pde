void choosePath(String tempPath1, String tempPath2, 
  String tempPath3, String tempPath4) {//4 path decisions
  if (keyPressed) {
    if (key == '1') {
      currentCase = tempPath1;
    }
    if (key == '2') {
      currentCase = tempPath2;
    }
    if (key == '3') {
      currentCase = tempPath3;
    }
    if (key == '4') {
      currentCase = tempPath4;
    }
  }
}
void choosePath2(String tempPath1, String tempPath2) {
  if (keyPressed) {//2 path decisions
    if (key == 'q') {
      currentCase = tempPath1;
    }
    if (key == 'w') {
      currentCase = tempPath2;
    }
  }
}
void startGame() {
  //takes you to next case in the beginning
  if (keyPressed) {
    if (key == 's' || key == 'S') {
      currentCase = "Attacked and Lost";
    }
  }
}
void resetGame() {
  //back to title screen

  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      currentCase = "Start";
    }
  }
}
void continueGame(String tempPath) {
  if (keyPressed) {//goes to the next scene when the 'c' key is pressed
    if (key == 'c') {
      currentCase = tempPath;
    }
  }
}

void continueGame2(String tempPath) {
  if (keyPressed) {//goes to the next scene when you press 'space'
    if (key == ' ') {
      currentCase = tempPath;
    }
  }
}
void checkpoint() {
  //back to Gluttony
  //a checkpoint hot key so you don't have to start over :P
  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      currentCase = "Gluttony";
      song5.play();
    }
  }
}