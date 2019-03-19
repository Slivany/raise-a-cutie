class CutieClass {
  //Arraylist som holder billederne
  PImage[] characters = new PImage[6];
  int lvl = 0;
  int reset = 0;

  CutieClass()
  {
  }
  //Loader billeder og angiver startsværdi 0. Vi fortæller den at den kan plusse op til næste level under visse omstændigheder
  void loadImages()
  {
    for (int x = 0; x < 6; x++) {
      int y = x + 1;
      characters[x] = loadImage("lv" + y + ".png");
    }
  }
  //Vi går her én level op ved at plusse level med et
  void nextLvl()
  {
    lvl = lvl + 1;
  }
  //Vi angiver position og tegner vores karakter her
  void draw()
  {
    if (lvl > 5) {
      image(characters[5], 0, 0);
    } else {
      image(characters[lvl], 0, 0);
    }
  }
  //Coin funktion som tjekker om vi er inden for vores billedes ramme, hvis vi er det får vi coins.
  void coins() {
    PImage img;
    if (lvl > 5) {
      img = characters[5];
    } else {
      img = characters[lvl];
    }
    if ((mouseX > img.X && mouseX < img.X+img.width) && (mouseY > img.Y && mouseY < img.Y + img.height)) {
      valuta += cutieClick;
      index = int(random(songs.length));
      songs[index].trigger();
    }
  }

  void lvlUP() {
    if (meter >= xpTilLevel) {
      cutie.nextLvl();
      meter = reset;
    }
  }
}