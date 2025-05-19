//sino buscar luego a, si asignar resultado a id que llama, id de quien llama
otrocoso=-1;
recarga=-1;
xi=argument2.x;
yi=argument2.y;
if(instance_exists(objeto)){
    n=0;
    do{
        do{
            xx=xi-(visualizacion*0.75)+irandom(visualizacion*1.5);
            yy=yi-(visualizacion*0.75)+irandom(visualizacion*1.5);}
        until(point_distance(xi,yi,xx,yy)<visualizacion*0.75);
        otrocoso=instance_nearest(xx,yy,objeto);
        if(point_distance(xi,yi,otrocoso.x,otrocoso.y)<visualizacion){
            if(recarga=-1){
                if(!collision_line(xi,yi,otrocoso.x,otrocoso.y,bloque,altocol,1)){
                    recarga=otrocoso;}}
            else{
                if(!collision_line(xi,yi,otrocoso.x,otrocoso.y,bloque,altocol,1)){
                    if(point_distance(xi,yi,otrocoso.x,otrocoso.y)<point_distance(xi,yi,recarga.x,recarga.y)-visualizacion*0.3
                    or comparacion(otrocoso.municion,otrocoso.tipo,recarga.municion,recarga.tipo)){
                        recarga=otrocoso;}}}}
        n+=1;}
    until(n>4 and (recarga>0 or n>10));
    if(argument1=0){
        return(recarga);}
    if(recarga>0){
        if(argument1=1){
            argument2.recarga=recarga;}}
    else if(argument0!=-1){
            pillandolo(argument0,argument2);}}
else if(argument0!=-1){
    pillandolo(argument0,argument2);}
