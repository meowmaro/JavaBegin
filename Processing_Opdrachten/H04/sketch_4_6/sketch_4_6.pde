float cijfer1 = 6.3;
float cijfer2 = 7.7;
float cijfer3 = 4.5;

float gemiddelde = (cijfer1 + cijfer2 + cijfer3) / 3;

gemiddelde *= 10;
gemiddelde = round (gemiddelde);
gemiddelde /= 10;

println(gemiddelde);

if(gemiddelde > 5.5){
  println("Je bent geslaagd");
} else{
  println("Je bent gezakt");
}
