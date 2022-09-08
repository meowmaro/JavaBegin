size(690, 400);
background(255,255,255);

//line
line(40,20,230,20);

//rectangle
fill(0,0,0);
text("Rechthoek",110,160);
noFill();
rect(40,40,190,100);

//rounded rectangle
fill(0,0,0);
text("Afgeronde rechthoek",95,340);
noFill();
rect(40,190,200,120,30);

//filled rectangle with oval
fill(0,0,0);
text("Gevulde rechthoek met ovaal",280,160);
fill(255,0,255);
noStroke();
rect(260,40,190,100);
noFill();
stroke(1);
ellipse(355,90,190,100);

//filled oval
fill(0,0,0);
text("Gevulde ovaal",320,340);
noStroke();
fill(255,0,255);
ellipse(355,255,190,100);

//circle
fill(0,0,0);
text("Cirkel",545,340);
stroke(1);
noFill();
ellipse(560,255,100,100);

//oval with slice
fill(255,0,255);
arc(560,90,180,100,PI*1.8,PI*2);
fill(0,0,0);
text("Taartpunt met ovaal eromheen",485,165);
stroke(1);
noFill();
ellipse(560,90,180,100);
