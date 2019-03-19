import ddf.minim.*;
Minim minim;
int index = 0;
AudioSample[] songs = new AudioSample[11];

// Need G4P library
import g4p_controls.*;
CutieClass cutie = new CutieClass();
PImage bubble;
int valuta = 0;
float cutieClick = 1;
float icecream = 10;
float lollipop = 25;
float donut = 50;
float meter = 0;
//174 ganget med cutie.lvl opløftet i 1.5
float xpTilLevel = 174;

public void setup() {
  size(350, 350, JAVA2D);
  createGUI();
  customGUI();
  gameLoad();
  // Place your setup code here
  cutie.loadImages();
  minim = new Minim(this);
  songs[0] = minim.loadSample("sound1.wav");
  songs[1] = minim.loadSample("sound2.wav");
  songs[2] = minim.loadSample("sound3.wav");
  songs[3] = minim.loadSample("sound4.wav");
  songs[4] = minim.loadSample("sound5.wav");
  songs[5] = minim.loadSample("sound6.wav");
  songs[6] = minim.loadSample("sound7.wav");
  songs[7] = minim.loadSample("sound8.wav");
  songs[8] = minim.loadSample("sound9.wav");
  songs[9] = minim.loadSample("sound10.wav");
  songs[10] = minim.loadSample("sound11.wav");
  bubble = loadImage ("edited talebobbel.png");
}

public void draw() {
  background(255);
  //Potensfunktion
  xpTilLevel = 174*pow(cutie.lvl+1, 1.5);
  stroke(255, 10, 10);
  rect(150, 190, 176, 25);
  noFill();
  noStroke();
  //Love-o-meter
  fill(0, 102, 153);
  textSize(18);
  text("Love-o-meter", 175, 175); 
  noFill();
  //Candy Shop
  fill(0, 102, 153);
  textSize(18);
  text("Candy Shop", 182, 250); 
  noFill();
  //CurrencyText
  fill(0, 102, 153);
  textSize(18);
  text("Currency", 193, 115); 
  noFill();
  //Valuta
  fill(0, 12, 133);
  textSize(12);
  text(valuta, 198, 137); 
  noFill();
  //Kalder på lvlUP funktionen
  cutie.lvlUP();
  //Filling love-o-meter
  fill(255, 0, 170);
  float barLength = floor((174/xpTilLevel)*meter);
  rect(151, 191, barLength, 24);
  noFill();
  noStroke();
  //Talebobbel
  image (bubble, 125, 0, 226, 101);
  //Kalder på draw funktionen
  cutie.draw();

  //Winning Screen
  if (cutie.lvl > 5) {
    WinningScreen();
  }
}
//Kalder på vores coins funktion og sørger for at vi kan klikke på karakteren for coins.
void mousePressed() {
  cutie.coins();
}

void gameSave() {
  PrintWriter saveWriter = createWriter("CutieSave.txt");
  //skriver til bufferen
  saveWriter.print(cutie.lvl +";"+ meter +";"+ valuta);
  //flush gemmer bufferen til filen.
  saveWriter.flush();
  saveWriter.close();
}


void gameLoad() {
  String data;
  BufferedReader saveReader = createReader("CutieSave.txt");
  try {
    data = saveReader.readLine();
  } 
  catch (IOException e) {
    e.printStackTrace();
    data = null;
  }

  if (data == null) {
    cutie.lvl = 0;
    meter = 0;
    valuta = 0;
  } else {
    String[] variables = split(data, ';');
    cutie.lvl = int (variables[0]);
    meter = float (variables[1]);
    valuta = int (variables[2]);
  }
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI() {
}