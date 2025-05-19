if(instance_exists(casa)){
otrocoso=instance_find(casa,condicionador.casitas);
xx=otrocoso.x+lengthdir_x(30,point_direction(otrocoso.x,otrocoso.y,argument0.x,argument0.y));
yy=otrocoso.y+lengthdir_y(30,point_direction(otrocoso.x,otrocoso.y,argument0.x,argument0.y));
if(point_distance(argument0.x,argument0.y,otrocoso.x,otrocoso.y)<visualizacion
and !collision_line(argument0.x,argument0.y,xx,yy,bloque,1,1)){
    argument0.blanco=otrocoso;}
else{
    otrocoso=instance_nearest(argument0.x,argument0.y,casa);
    xx=otrocoso.x+lengthdir_x(30,point_direction(otrocoso.x,otrocoso.y,argument0.x,argument0.y));
    yy=otrocoso.y+lengthdir_y(30,point_direction(otrocoso.x,otrocoso.y,argument0.x,argument0.y));
    if(point_distance(argument0.x,argument0.y,otrocoso.x,otrocoso.y)<visualizacion
    and !collision_line(argument0.x,argument0.y,xx,yy,bloque,1,1)){
        argument0.blanco=otrocoso;}
    else{
        argument0.blanco=-1;}}}
else{
    argument0.blanco=-1;}
