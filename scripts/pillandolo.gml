//tipo objeto o id a buscar, id de quien llama
if(argument1.arma=0){
    picandolo(argument0,argument1);}
else{
otrocoso=-1;
blanco=-1;
xi=argument1.x;
yi=argument1.y;
if(instance_exists(argument0)){
    n=0;
    do{
        do{
            xx=xi-(visualizacion*0.75)+irandom(visualizacion*1.5);
            yy=yi-(visualizacion*0.75)+irandom(visualizacion*1.5);}
        until(point_distance(xi,yi,xx,yy)<=visualizacion*0.75);
        otrocoso=instance_nearest(xx,yy,argument0);
        if(point_distance(xi,yi,otrocoso.x,otrocoso.y)<=visualizacion and !(argument1.arma=-1 and otrocoso.arma=-1)){
            if(blanco=-1){
                if(!collision_line(xi,yi,otrocoso.x,otrocoso.y,bloque,altocol,1)){
                    blanco=otrocoso;}}
            else{
                if(!collision_line(xi,yi,otrocoso.x,otrocoso.y,bloque,altocol,1)){
                    if(point_distance(xi,yi,otrocoso.x,otrocoso.y)<point_distance(xi,yi,blanco.x,blanco.y)){
                        blanco=otrocoso;}}}}
        n+=1;}
    until(n>5 and (blanco>0 or n>20));
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
            argument1.estado=1;}}}}
