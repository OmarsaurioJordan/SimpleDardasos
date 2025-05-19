if(argument0.arma=-1){
    argument0.estado=3;
    if((condicionador.renovaguardianes>0 or condicionador.relojguardianes>0)
    and condicionador.huidaguardianes=1){
        argument0.rendicion=0;}
    argument0.cercana=caminomenor(argument0,baseazul,condicionador.num_baseazul);}
else{
    argument0.estado=0;
    argument0.rendicion=-1;
    distanciaojo(argument0);}
