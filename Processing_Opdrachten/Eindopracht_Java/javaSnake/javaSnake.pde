ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int w = 30, h = 30, blocks = 20, direction = 0;

void setup() {
  size(500,500);
  x.add(0);
  y.add(15);
}

void draw() {
  background(0,0,0);
  fill(50,160,50);
  for (int i = 0; i < x.size(); i++) rect(x.get(i)*blocks, y.get(i)*blocks, blocks, blocks);
}
