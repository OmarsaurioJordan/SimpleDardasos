//tipo objeto o id a buscar, id de quien llama
otrocoso=-1;
blanco=-1;
xi=argument1.x;
yi=argument1.y;
if(instance_exists(argument0)){
    if(argument0=enemigo){
        cuantos=instance_number(enemigo);}
    else{
        cuantos=instance_number(guardian);}
    for(i=0;i<cuantos;i+=1){
        otrocoso=instance_find(argument0,i);
        if(point_distance(xi,yi,otrocoso.x,otrocoso.y)<=visualizacion and otrocoso.vida>0){
            if(blanco=-1){
                if(!collision_line(xi,yi,otrocoso.x,otrocoso.y,bloque,altocol,1)){
                    blanco=otrocoso;}}
            else{
                if(!collision_line(xi,yi,otrocoso.x,otrocoso.y,bloque,altocol,1)){
                    if(point_distance(xi,yi,otrocoso.x,otrocoso.y)<point_distance(xi,yi,blanco.x,blanco.y)){
                        blanco=otrocoso;}}}}}
    if(blanco>0){
        argument1.blanco=blanco;
        if(blanco.object_index=player){
            if(argument1.estado=0 and irandom(1)=0){
                enemigovoz(1,argument1);}}
        if(argument1.object_index=guardian){
            llamandolos(argument1.x,argument1.y,point_direction(argument1.x,argument1.y,blanco.x,blanco.y),guardian);}
        else if(argument1.object_index=enemigo){
            if(argument1.firme=2){argument1.firme=0;}
            llamandolos(argument1.x,argument1.y,point_direction(argument1.x,argument1.y,blanco.x,blanco.y),enemigo);}
        if(argument1.estado!=3 or argument1.arma>-1){
            argument1.estado=1;}}}
