//id de quien llama
if(instance_exists(capturado)){
    aux=instance_nearest(argument0.x,argument0.y,capturado);
    if(!collision_line(argument0.x,argument0.y,aux.x,aux.y,bloque,1,1)
    and collision_rectangle(aux.x-96,aux.y-96,aux.x+96,aux.y+96,argument0,1,0)){
        argument0.firme=1;}
    else{
        if(collision_point(argument0.x,argument0.y+48,objeto,0,1)){
            argument0.firme=2;}}}
else{
    if(collision_point(argument0.x,argument0.y+48,objeto,0,1)){
        argument0.firme=2;}}
