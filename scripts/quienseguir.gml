aux=-1;
distancia=0;
resultado=-1;
for(i=0;i<condicionador.num_guardianes;i+=1){
    aux=instance_find(guardian,i);
    if(aux.arma!=-1){
        if(point_distance(argument0.x,argument0.y,aux.x,aux.y)<distancia or distancia=0){
            distancia=point_distance(argument0.x,argument0.y,aux.x,aux.y);
            resultado=aux;}}}
return(resultado);
