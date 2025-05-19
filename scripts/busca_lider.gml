otrocoso=-1;
blanco=-1;
if(instance_furthest(argument0.x,argument0.y,enemigo)!=argument0){
    n=0;
    do{
        do{
            xx=argument0.x-(visualizacion*0.75)+irandom(visualizacion*1.5);
            yy=argument0.y-(visualizacion*0.75)+irandom(visualizacion*1.5);}
        until(point_distance(argument0.x,argument0.y,xx,yy)<visualizacion*0.75);
        otrocoso=instance_nearest(xx,yy,enemigo);
        if(otrocoso.mente=-2){
            if(point_distance(argument0.x,argument0.y,otrocoso.x,otrocoso.y)<visualizacion){
                if(!collision_line(argument0.x,argument0.y,otrocoso.x,otrocoso.y,bloque,altocol,1)){
                    blanco=otrocoso;}}}
        n+=1;}
    until(blanco>0 or n>10);
    if(blanco>0){
        argument0.mente=blanco;}}
