void keyPressed() {
  if(keyHold[keyCode] == "0"){keysHeld++; keysPressed++;}
  if(keyHold[keyCode] == "0"){keyPress[keyCode] = str(keysPressed);}
  keyHold[keyCode] = str(keysHeld);
 
}

void keyReleased() {
 if(keyHold[keyCode] != "0"){keysHeld--;}
 keyHold[keyCode] = "0";
 keyPress[keyCode] = "0";
}
