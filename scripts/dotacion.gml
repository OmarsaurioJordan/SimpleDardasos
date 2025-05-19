//id de quien llama
aux=collision_point(argument0.x,argument0.y+48,objeto,0,1);
if(aux>0){
    argument0.arma=aux.tipo;
    argument0.municion=aux.municion;
    with(aux){
        instance_destroy();}}
else{
    for(i=-48;i<=48;i+=48){
        for(j=-48;j<=48;j+=48){
            aux=collision_point(argument0.x+i,argument0.y+j,objeto,0,1);
            if(aux>0){
                argument0.arma=aux.tipo;
                argument0.municion=aux.municion;
                with(aux){
                    instance_destroy();}
                exit;}}}}
