import controlP5.*;

ControlP5 cp;
Textfield TF1;
Button Knop1;

void setup(){
  size(600,400);

cp = new ControlP5(this);
TF1 = cp.addTextfield("").setText("").setSize(200,50).setPosition(100,150);
Knop1 = cp.addButton("Knop1").setCaptionLabel("Enter").setSize(100,50).setPosition(350,150);
}

void  draw(){
}

void Knop1(){
  println("Het bedrag met BTW is: ");
  String aantal = TF1.getText();
  println(Float.valueOf(aantal)*1.21);
}
