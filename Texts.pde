byte TextSize_48 = 48;

String Title = "Drawing Graphics       ";
int Title_x = 399;
int Title_y = 675;

String Dev_Name = "By LoubiTek";
int Dev_Name_x = 775;
int Dev_Name_y = 675;

String Draw_FPS = "FPS: "+FPS;
int Draw_FPS_x = 775;
int Draw_FPS_y = 625;

// Texts
void Texts()
{ 
  textSize(TextSize_48+24);
  textAlign(CENTER);
  fill(255);
  text(Title,Title_x,Title_y);
  
  textSize(TextSize_48-24);
  textAlign(RIGHT);
  text(Dev_Name,Dev_Name_x,Dev_Name_y);
  
  textSize(TextSize_48-32);
  textAlign(RIGHT);
  text(Draw_FPS,Draw_FPS_x,Draw_FPS_y);
}
