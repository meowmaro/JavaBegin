float gewicht = 60;
float lengte = 1.85;

float BMI = gewicht / (lengte * lengte);

BMI *= 10;
BMI = round (BMI);
BMI /= 10;

println("Met een gewicht van " + gewicht + " en een lengte van " + lengte + ", is jouw BMI " + BMI);
