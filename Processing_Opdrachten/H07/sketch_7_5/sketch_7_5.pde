int Cijfer = 4;
int Beoordeling = round(Cijfer);
  switch(Beoordeling){
    case 1:
    case 2:
    case 3:
      println("Slecht.");
      break;
    case 4:
      println("Onvoldoende.");
      break;
    case 5:
      println("Matig.");
      break;
    case 6:
    case 7:
      println("Voldoende.");
      break;
    case 8:
    case 9:
    case 10:
      println("Goed");
      break;
  default:
    println("Voer een getal in van 1 tot 10");
    break;
}
