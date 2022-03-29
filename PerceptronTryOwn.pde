ArrayList<Points> inputs = new ArrayList<Points>();
//genika kaneis prakseis me aksona x anapoda kai meta ta kaneis flip sto draw(logika)

void setup() {


  size(600, 600);
  background(0);
}

void mouseClicked() {

  ellipse(mouseX, mouseY, 8, 8);
  Points point = new Points(mouseX, height-mouseY);
  inputs.add(point);
  print("X="+point.getX()+",Y="+point.getY()+"\n");
}

void keyPressed() {
  switch(key) {
  case 'c':
    background(0);
    inputs.clear();
    for (int i=0; i < inputs.size(); i++) {
      inputs.remove(i);
    }
    break;
  case 'l':
    int x1 =  inputs.get(inputs.size()-1).x ;
    int y1 =  height- inputs.get(inputs.size()-1).y ;

    int x2 =  inputs.get(inputs.size()-2).x ;
    int y2 =  height - inputs.get(inputs.size()-2).y;

    stroke(127);
    strokeWeight(5);
    line(x1, y1, x2, y2);
    print(x1, y1, x2, y2+"\n");
  }
}

void draw() {
   strokeWeight(1);
  smooth();
}
