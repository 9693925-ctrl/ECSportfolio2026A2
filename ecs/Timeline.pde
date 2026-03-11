// Isabella Wang | 23 Feb 2026 | Timeline
void setup() {
  size(950,400);
}
void draw() {
  background(#AEC6B5);
  drawRef();
  histEvent(150,200,"Mar 1853",true,"Vincent was born in the Brabant village of Zundert, with 3 brothers and 3 sisters.");
  histEvent(280,300,"1867",false,"Went to secondary school in Tilburg and quit school half way through his second academic year.");
  histEvent(450,200,"1872",true,"Started to work as a trainee at the international art dealer Goupil & Cie.");
  histEvent(590,300,"1881",false,"Started to become an artist");
  histEvent(640,200,"1882",true,"Vincent met his partner, Sien Hoornik, who worked as both his model and wife. \n Due to their different beliefs, Vincent broke off the relationship after a year and a half.");
  histEvent(690,300,"1888",false,"Vincent started to develop his own style of art");
  histEvent(740,200,"1889",true,"Spent one year in the mental hospital in Saint-Rémy-de-Provence. \n Despite his unstable mental health, he was very productive: he made about 150 paintings in a year.");
  histEvent(800,300,"1890",false," Spent the final months of his life in Auvers-sur-Oise: an artists' village near Paris. \n He made new friends and he threw himself into painting again.");
}
void drawRef() {
  textAlign(CENTER);
  textSize(36);
  text("Vincent van Gogh: Timeline",width/2,70);
  textSize(20);
  text("by Isabella Wang",width/2,90);
  fill(#425A48);
  strokeWeight(5);
  line(50,250,900,250);
  textSize(16);
  text("1850",50,275);
  text("1900",900,275);
  fill(#425A48);
  strokeWeight(2);
  line(50,240,50,260);
  line(900,240,900,260);

}
void histEvent(int x,int y,String title,boolean top, String detail) {
  if(top == true) {
    line(x,y,x-80,y+50);
  } else {
    line(x,y,x-60,y-50);
  }
  rectMode(CENTER);
  fill(#f1fad7);
  rect(x,y,100,30,10);
  fill(#425A48);
  text(title,x,y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    text(detail,width/2,350);
  }
}
