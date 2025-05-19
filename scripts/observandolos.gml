otrocoso=-1;
blanco=-1;
xi=argument1.x;
yi=argument1.y;
if(instance_exists(argument0) and argument1.arma!=-1){
    if(instance_exists(argument2)){
        rot=point_direction(xi,yi,argument2.x,argument2.y);
        if(sumangulos(rot,-argument3*90)<180){
            for(i=5;i<=180;i+=5){
                otrocoso=collision_line(xi,yi,lengthdir_x(visualizacion*0.75,rot+i),lengthdir_y(visualizacion*0.75,rot+i),argument0,1,1);
                if(otrocoso>0){
                    if(otrocoso!=argument2){
                        if(point_distance(xi,yi,otrocoso.x,otrocoso.y)<visualizacion){
                            blanco=otrocoso; break;}}}}}
        else{
            for(i=5;i<=180;i+=5){
                otrocoso=collision_line(xi,yi,lengthdir_x(visualizacion*0.75,rot-i),lengthdir_y(visualizacion*0.75,rot-i),argument0,1,1);
                if(otrocoso>0){
                    if(otrocoso!=argument2){
                        if(point_distance(xi,yi,otrocoso.x,otrocoso.y)<visualizacion){
                            blanco=otrocoso; break;}}}}}
        if(blanco>0){
        argument1.blanco=blanco;}}}
