switch(argument0){

default:
viewdist = Control.viewdist
viewx2 = Control.viewx2;
viewy2 = Control.viewy2;

Control.x = obj_Player.x;
Control.y = obj_Player.y;

viewx = ((Control.x-view_wview[0]/2)*(viewdist-1)+(mouse_x-view_wview[0]/2))/viewdist;
viewy = ((Control.y-view_hview[0]/2)*(viewdist-1)+(mouse_y-view_hview[0]/2))/viewdist;
viewx2 = viewx2-(viewx2-viewx)*0.4;
viewy2 = viewy2-(viewy2-viewy)*0.4;

view_xview[0] = viewx2+random(Control.shake)-shake/2;
view_yview[0] = viewy2+random(Control.shake)-shake/2;

if (shake > 10){
shake *= 0.8}
if( shake > 0){
shake -= 1}
else{
shake = 0;}

break;















}