import controlP5.*;

ControlP5 cp;
Button goedeKnop;
Button fouteKnop;


void setup(){
  size(400,400);

cp = new ControlP5(this);
goedeKnop = cp.addButton("kmw")
          .setPosition(50,150)
          .setSize(100,100)
          .setCaptionLabel("Klik Mij");
goedeKnop.setColorForeground(color(0,255,0));

cp = new ControlP5(this);
fouteKnop = cp.addButton("kmn")
          .setPosition(250,150)
          .setSize(100,100)
          .setCaptionLabel("Klik Mij");
fouteKnop.setColorForeground(color(255,0,0));

}

void  draw(){
}

void kmw(){
   println("Goed gedaan");
}

void kmn(){
  println("Helaas fout!");
}
