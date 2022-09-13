size(750,500);
background(200,200,200);

float gewicht = 60;
float lengte = 1.85;
float leeftijd = 19;
float BMI = 0;

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round (BMI);
BMI /= 10;

rect(100,200,170,80);
rect(300,100,170,80);
rect(500,200,170,80);

fill(0,0,0);
textSize(20);
text("Gewicht = " + gewicht + "KG", 105,245);
text("Leeftijd = " + leeftijd + " jaar", 305,150);
text("Lengte = " + lengte + " meter", 505,245);

if(leeftijd < 70){
  if(BMI < 18.5){
    fill(255,255,0);
  }else if(BMI < 25){
    fill(0,255,0);
  }else if(BMI < 30){
    fill(255,255,0);
  }else{
    fill(255,0,0);
  }

  if(BMI < 22){
    fill(255,255,0);
  }else if(BMI < 28){
    fill(0,255,0);
  }else if(BMI < 30){
    fill(255,255,0);
  }else{
    fill(255,0,0);
  }
}
textSize(35);
text("BMI = " + BMI, 315,350);
