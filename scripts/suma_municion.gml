if(argument0.tipo!=0){
repeat(6){
    do{
        xx=argument0.x-24+irandom(48);
        yy=argument0.y-24+irandom(48);}
    until(point_distance(xx,yy,argument0.x,argument0.y)>=15
    and point_distance(xx,yy,argument0.x,argument0.y)<=25);
    otrocoso=instance_nearest(xx,yy,objeto);
    if(otrocoso!=argument0){
        if(otrocoso.tipo=argument0.tipo){
            if(otrocoso.municion+argument0.municion<100){
                argument0.municion+=otrocoso.municion;
                with(otrocoso){
                    instance_destroy();}}}}}}
