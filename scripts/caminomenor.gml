//
distancia=path_add();
xx=24+floor(argument0.x/48)*48;
yy=24+floor(argument0.y/48)*48;
otrocoso=-1;
menor=0;
resultado=-1;
for(i=0;i<argument2;i+=1){
    otrocoso=instance_find(argument1,i);
    mp_grid_clear_rectangle(rejilla,otrocoso.x-10,otrocoso.y-10,otrocoso.x+10,otrocoso.y+10);
    mp_grid_path(rejilla,distancia,xx,yy,otrocoso.x,otrocoso.y,1);
    mp_grid_add_rectangle(rejilla,otrocoso.x-10,otrocoso.y-10,otrocoso.x+10,otrocoso.y+10);
    if(path_get_length(distancia)<menor or menor=0){
        resultado=otrocoso;
        menor=path_get_length(distancia);}}
path_delete(distancia);
return(resultado);
