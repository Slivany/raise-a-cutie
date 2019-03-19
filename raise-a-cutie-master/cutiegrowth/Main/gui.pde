/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void imgButton2_click1(GImageButton source, GEvent event) { //_CODE_:imgButton2:501732:
  println("imgButton2 - GImageButton >> GEvent." + event + " @ " + millis());
  if (valuta >= 50) {
    valuta -= donut;
    meter += donut;
  } else {
    println("You do not have enough coins for a donut!");
  }
} //_CODE_:imgButton2:501732:

public void imgButton3_click1(GImageButton source, GEvent event) { //_CODE_:imgButton3:400537:
  println("imgButton3 - GImageButton >> GEvent." + event + " @ " + millis());
  if (valuta >= 25) {
    valuta -= lollipop;
    meter += lollipop;
  } else {
    println("You do not have enough coins for a lollipop!");
  }
} //_CODE_:imgButton3:400537:

public void imgButton4_click1(GImageButton source, GEvent event) { //_CODE_:imgButton4:987310:
  println("imgButton4 - GImageButton >> GEvent." + event + " @ " + millis());
  if (valuta >= 10) {
    valuta -= icecream;
    meter += icecream;
  } else {
    println("You do not have enough coins for an icecream!");
    //text("You do not have enough coins for an icecream!", 125, 50);
  }
} //_CODE_:imgButton4:987310:

public void imgButton5_click1(GImageButton source, GEvent event) { //_CODE_:imgButton5:237760:
  println("imgButton5 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton5:237760:

public void imgButton7_click1(GImageButton source, GEvent event) { //_CODE_:imgButton7:885239:
  println("imgButton7 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton7:885239:

public void imgButton8_click1(GImageButton source, GEvent event) { //_CODE_:imgButton8:686714:
  println("imgButton8 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton8:686714:

public void imgButton9_click1(GImageButton source, GEvent event) { //_CODE_:imgButton9:632010:
  println("imgButton9 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton9:632010:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:258020:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  gameSave();
} //_CODE_:button1:258020:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Raise a cutie");
  imgButton2 = new GImageButton(this, 267, 268, 50, 50, new String[] { "edited donut.png", "edited donut.png", "edited donut.png" } );
  imgButton2.addEventHandler(this, "imgButton2_click1");
  imgButton3 = new GImageButton(this, 208, 268, 50, 50, new String[] { "edited lollipop.png", "edited lollipop.png", "edited lollipop.png" } );
  imgButton3.addEventHandler(this, "imgButton3_click1");
  imgButton4 = new GImageButton(this, 147, 267, 50, 50, new String[] { "edited ice cream.png", "edited ice cream.png", "edited ice cream.png" } );
  imgButton4.addEventHandler(this, "imgButton4_click1");
  imgButton5 = new GImageButton(this, 238, 125, 15, 15, new String[] { "edited coin.png", "edited coin.png", "edited coin.png" } );
  imgButton5.addEventHandler(this, "imgButton5_click1");
  label2 = new GLabel(this, 153, 322, 23, 20);
  label2.setText("10");
  label2.setTextBold();
  label2.setOpaque(false);
  label3 = new GLabel(this, 214, 323, 28, 20);
  label3.setText("25");
  label3.setTextBold();
  label3.setOpaque(false);
  label4 = new GLabel(this, 274, 322, 22, 20);
  label4.setText("50");
  label4.setTextBold();
  label4.setOpaque(false);
  imgButton7 = new GImageButton(this, 173, 325, 15, 15, new String[] { "edited coin.png", "edited coin.png", "edited coin.png" } );
  imgButton7.addEventHandler(this, "imgButton7_click1");
  imgButton8 = new GImageButton(this, 238, 326, 15, 15, new String[] { "edited coin.png", "edited coin.png", "edited coin.png" } );
  imgButton8.addEventHandler(this, "imgButton8_click1");
  imgButton9 = new GImageButton(this, 295, 325, 15, 15, new String[] { "edited coin.png", "edited coin.png", "edited coin.png" } );
  imgButton9.addEventHandler(this, "imgButton9_click1");
  button1 = new GButton(this, 28, 316, 80, 30);
  button1.setText("Save Game");
  button1.addEventHandler(this, "button1_click1");
}

// Variable declarations 
// autogenerated do not edit
GImageButton imgButton2; 
GImageButton imgButton3; 
GImageButton imgButton4; 
GImageButton imgButton5; 
GLabel label2; 
GLabel label3; 
GLabel label4; 
GImageButton imgButton7; 
GImageButton imgButton8; 
GImageButton imgButton9; 
GButton button1; 