import controlP5.*;

ControlP5 cp;
Button Ouders;
Button Studenten;

int studentAantal = 1;
int ouderAantal = 1;
void setup(){
  size(400,400);
  background(255,255,255);

cp = new ControlP5(this);
Ouders = cp.addButton("Ouders")
          .setPosition(50,125)
          .setSize(100,100)
          .setCaptionLabel("Ouders");
Ouders.setColorForeground(color(255,0,0));

cp = new ControlP5(this);
Studenten = cp.addButton("Studenten")
          .setPosition(250,125)
          .setSize(100,100)
          .setCaptionLabel("Studenten");
Studenten.setColorForeground(color(255,0,0));
}

void  draw(){
}

void Ouders(){
  println("Het aantal ouders is nu " + studentAantal ++);
}

void Studenten(){
  println("Het aantal studenten is nu " + ouderAantal ++);
}
