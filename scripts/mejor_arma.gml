with(argument0){
if(reloj2=-1 and arma>0){
    otrocoso=busca_arma(-1,0,id);
    if(otrocoso>0){
        if(otrocoso.tipo=arma){
            recarga=otrocoso;
            estado=3;}
        else if(comparacion(otrocoso.municion,otrocoso.tipo,municion,arma)){
            recarga=otrocoso;
            estado=3;}}}}
