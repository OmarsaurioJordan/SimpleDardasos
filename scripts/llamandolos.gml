//x origen, y origen, direccion ideal, objetos que escuchan
aux=-1;
if(instance_exists(argument3)){
for(i=0;i<360;i+=45){
    aux=instance_nearest(argument0+lengthdir_x(visualizacion*0.35,i),
    argument1+lengthdir_y(visualizacion*0.35,i),argument3);
    if(aux.estado=0){
        if(point_distance(argument0,argument1,aux.x,aux.y)<visualizacion*0.35){
            xx=aux.x+lengthdir_x(visualizacion*0.5,argument2);
            yy=aux.y+lengthdir_y(visualizacion*0.5,argument2);
            if(!collision_line(aux.x,aux.y,xx,yy,bloque,altocol,1)){
                aux.metax=xx;
                aux.metay=yy;
                aux.estado=2;
                if(aux.object_index=enemigo){
                    if(aux.firme=2){aux.firme=0;}}}
            else if(!collision_line(aux.x,aux.y,argument0,argument1,bloque,altocol,1)){
                aux.metax=argument0;
                aux.metay=argument1;
                aux.estado=2;
                if(aux.object_index=enemigo){
                    if(aux.firme=2){aux.firme=0;}}}}}}}
