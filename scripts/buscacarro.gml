if(argument0.estado=3){
for(i=0;i<instance_number(ambulanciazul);i+=1){
    aux=instance_find(ambulanciazul,i);
    if(point_distance(aux.x,aux.y,argument0.x,argument0.y)<visualizacion and
    !collision_line(argument0.x,argument0.y,aux.x,aux.y,bloque,altocol,1)){
        argument0.mente=aux; break;}}}
else{
for(i=0;i<instance_number(carroazul);i+=1){
    aux=instance_find(carroazul,i);
    if(point_distance(aux.x,aux.y,argument0.x,argument0.y)<visualizacion and
    !collision_line(argument0.x,argument0.y,aux.x,aux.y,bloque,altocol,1)){
        argument0.mente=aux; break;}}}
