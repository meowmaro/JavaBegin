boolean check;
String[]namen = {
  "Joost",
  "Jan",
  "Jaap",
  "Jesse",
  "Jens",
  "Jasper",
  "Abdelilah",
  "Jonas"};

void setup(){
  check = false;
    for(int i = 0; i < namen.length; i++){
     if(namen[i] == "Jan"){
  check = true;
    }
  }  
  println(check);
}
