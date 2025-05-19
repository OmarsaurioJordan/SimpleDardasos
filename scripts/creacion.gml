for(i=0;i<argument0;i+=1){
    densidad=0;
    do{
        xx=100+irandom(room_width-200);
        yy=200+irandom(room_height-300);
        densidad+=1;}
    until(!collision_circle(xx,yy,200,casa,1,1) or densidad>100);
    if(densidad>110){
        break;}
    else{
        instance_create(xx,yy,casa);}}
valor=real("0."+string(round(argument1)));
densidad=((room_width*room_height)/8096)*valor;
for(i=0;i<densidad;i+=1){
    xx=20+round(random(room_width-40));
    yy=120+round(random(room_height-140));
    instance_create(xx,yy,natural);}
densidad=((room_width*room_height)/4304)*valor;
for(i=0;i<densidad;i+=1){
    xx=20+round(random(room_width-40));
    yy=120+round(random(room_height-140));
    instance_create(xx,yy,adorno);}
instance_create(room_width/2,room_height/2,player);
repeat(6){//numero de enemigos iniciales
    do{
        xx=100+irandom(room_width-200);
        yy=200+irandom(room_height-300);}
    until(point_distance(xx,yy,player.x,player.y)>visualizacion);
    otrocoso=instance_create(xx,yy,enemigo);
    if(irandom(2)>0){
        otrocoso.arma=choose(0,0,1,1,2,2,3,3,4,5,6);
        if(otrocoso.arma>0){
            otrocoso.municion=20;}
        otrocoso.estado=0;}}
repeat(4){//numero de guardias iniciales
    do{
        xx=100+irandom(room_width-200);
        yy=200+irandom(room_height-300);}
    until(point_distance(xx,yy,player.x,player.y)>visualizacion*0.5);
    otrocoso=instance_create(xx,yy,guardian);
    if(irandom(2)>0){
        otrocoso.arma=choose(0,0,1,1,2,2,3,3,4,5,6);
        if(otrocoso.arma>0){
            otrocoso.municion=20;}
        otrocoso.estado=0;}}
repeat(3){//numero de campesinos
instance_create(100+irandom(room_width-200),200+irandom(room_height-300),campesino);}
repeat(3){//numero de capturados
    do{
        xx=100+irandom(room_width-200);
        yy=200+irandom(room_height-300);}
    until(!collision_circle(xx,yy,20,bloque,1,1));
    instance_create(xx,yy,capturado);}
