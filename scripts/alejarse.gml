xx=0;
yy=0;
if(point_distance(argument0.blanco.x,argument0.blanco.y,argument0.x,argument0.y)<mele){
    giro=point_direction(argument0.x,argument0.y,argument0.blanco.x,argument0.blanco.y)+choose(-1,1)*(30+irandom(20));
    distancia=visualizacion*0.2+irandom(visualizacion*0.2);}
else{
    giro=point_direction(argument0.blanco.x,argument0.blanco.y,argument0.x,argument0.y)-35+irandom(70);
    distancia=visualizacion*0.3+irandom(visualizacion*0.2);}
xx=argument0.x+lengthdir_x(distancia,giro);
yy=argument0.y+lengthdir_y(distancia,giro);
if(xx<20 or xx>room_width-20 or yy>room_height-20 or yy<120 or collision_line(argument0.x,argument0.y,xx,yy,bloque,altocol,1)){
    n=0;
    do{
        giro=point_direction(argument0.x,argument0.y,argument0.blanco.x,argument0.blanco.y)+choose(-1,1)*(30+irandom(150));
        distancia=visualizacion*0.2+irandom(visualizacion*0.1);
        xx=argument0.x+lengthdir_x(distancia,giro);
        yy=argument0.y+lengthdir_y(distancia,giro);
        n+=1;}
    until(n>8 or (xx>20 and xx<room_width-20 and yy>120 and yy<room_height-20
    and !collision_line(argument0.x,argument0.y,xx,yy,bloque,altocol,1)));}
if(xx<20){
    xx=20;}
else if(xx>room_width-20){
    xx=room_width-20;}
if(yy>room_height-20){
    yy=room_height-20;}
else if(yy<120){
    yy=120;}
argument0.hullex=xx;
argument0.hulley=yy;
