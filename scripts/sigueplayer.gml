//id de quien llama
if(lider=1){
    if(argument0.estado!=1 and instance_exists(player)){
        if(point_distance(player.x,player.y,argument0.x,argument0.y)<visualizacion*0.8){
            if(player.arma>-1 and point_distance(player.x,player.y,argument0.x,argument0.y)>mele*4){
                if(!collision_line(player.x,player.y,argument0.x,argument0.y,bloque,altocol,1)){
                    argument0.metax=player.x;
                    argument0.metay=player.y;
                    argument0.estado=2;}}}}}
