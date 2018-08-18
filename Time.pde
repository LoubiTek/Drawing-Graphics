int millis = millis();
int day = day();
int month = month();
int year = year();

// Clock
void Clock()
{
  int h = hour();
  int m = minute();
  int s = second();
  
  textSize(24);
  fill(255,191);
  text(h + ":" + m + ":" + s, 675, 625);
}
