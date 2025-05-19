//id de quien llama, <0:recoger espada >0:recoger todo objeto
if(instance_exists(cultivo)and irandom(abs(argument1))=0){
    otrocoso=instance_nearest(argument0.x,argument0.y,cultivo);
    if(point_distance(argument0.x,argument0.y,otrocoso.x,otrocoso.y)<visualizacion
    and !collision_line(argument0.x,argument0.y,otrocoso.x,otrocoso.y,bloque,altocol,1)){
        argument0.blanco=otrocoso;
        argument0.estado=1;}}
else if(instance_exists(objeto)){
    n=0;
    do{
        xx=argument0.x-visualizacion+irandom(visualizacion*2);
        yy=argument0.y-visualizacion+irandom(visualizacion*2);
        otrocoso=instance_nearest(xx,yy,objeto);
        if(otrocoso.fijo=0 and point_distance(argument0.x,argument0.y,otrocoso.x,otrocoso.y)<visualizacion
        and !collision_line(argument0.x,argument0.y,otrocoso.x,otrocoso.y,bloque,altocol,1)){
            if(argument1<0){
                if(otrocoso.tipo!=0){
                    otrocoso=-1;}}
            else if(instance_exists(puntodenso)){
                aux=instance_nearest(otrocoso.x,otrocoso.y,puntodenso);
                if(point_distance(otrocoso.x,otrocoso.y,aux.x,aux.y)>visualizacion*0.7){
                    if(irandom(2)>0){
                        otrocoso=-1;}}}
            else{
                otrocoso=-1;}}
        else{
            otrocoso=-1;}
        n+=1;}
    until(otrocoso>0 or n>14);
    if(n<15){
        argument0.blanco=otrocoso;
        argument0.estado=1;}}
