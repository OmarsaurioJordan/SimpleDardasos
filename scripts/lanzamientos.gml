//0:enemigos o 1:aliados o 2:municion o 3:vidas, cantidad unidades a crear
limite=1;
repeat(argument1){
if(limite=1){
if(argument0=0){
    if(condicionador.densidadenemigos=1){
        aux=(room_width*room_height)/100000;
        if(condicionador.num_enemigos>aux){
            limite=0;}}
    else{
        aux=(room_width*room_height)/35000;
        if(condicionador.num_enemigos>aux){
            limite=0;}}}
else if(argument0=1){ 
    if(condicionador.densidadguardianes=1){
        aux=(room_width*room_height)/100000;
        if(condicionador.num_guardianes>aux){
            limite=0;}}
    else{
        aux=(room_width*room_height)/35000;
        if(condicionador.num_guardianes>aux){
            limite=0;}}}}
if(limite=1){
switch(argument0){
    case 0: aux=instance_find(creaenemigos,irandom(instance_number(creaenemigos)-1));
        switch(aux.area){
            case 0: xx=aux.x; yy=aux.y; break;
            case 1: for(i=0;i<20;i+=1){
                xx=aux.x-visualizacion*0.5+irandom(visualizacion);
                yy=aux.y-visualizacion*0.5+irandom(visualizacion);
                if(!collision_circle(xx,yy,radiobjeto,imagen,0,1)){break;}} break;
            default: i=0; do{
                otrocoso=0;
                xx=100+irandom(room_width-200);
                yy=200+irandom(room_height-300);
                if(instance_exists(creaguardianes)){
                    unomas=instance_nearest(xx,yy,creaguardianes);
                    if(point_distance(xx,yy,unomas.x,unomas.y)<visualizacion*0.5){
                        otrocoso=1;}}
                i+=1;}
                until(i=60 or (otrocoso=0 and !collision_circle(xx,yy,radiobjeto,imagen,0,1))); break;}
        otrocoso=instance_create(xx,yy,paracaidista);
        otrocoso.clase=1; otrocoso.arma=aux.arma; break;
    case 1: aux=instance_find(creaguardianes,irandom(instance_number(creaguardianes)-1));
        switch(aux.area){
            case 0: xx=aux.x; yy=aux.y; break;
            case 1: for(i=0;i<20;i+=1){
                xx=aux.x-visualizacion*0.5+irandom(visualizacion);
                yy=aux.y-visualizacion*0.5+irandom(visualizacion);
                if(!collision_circle(xx,yy,radiobjeto,imagen,0,1)){break;}} break;
            default: i=0; do{
                otrocoso=0;
                xx=100+irandom(room_width-200);
                yy=200+irandom(room_height-300);
                if(instance_exists(creaenemigos)){
                    unomas=instance_nearest(xx,yy,creaenemigos);
                    if(point_distance(xx,yy,unomas.x,unomas.y)<visualizacion*0.5){
                        otrocoso=1;}}
                i+=1;}
                until(i=60 or (otrocoso=0 and !collision_circle(xx,yy,radiobjeto,imagen,0,1))); break;}
        otrocoso=instance_create(xx,yy,paracaidista);
        otrocoso.clase=0; otrocoso.arma=aux.arma; break;
    case 2: aux=instance_find(creamuniciones,irandom(instance_number(creamuniciones)-1));
        switch(aux.area){
            case 0: xx=aux.x; yy=aux.y; break;
            case 1: for(i=0;i<20;i+=1){
                xx=aux.x-visualizacion*0.5+irandom(visualizacion);
                yy=aux.y-visualizacion*0.5+irandom(visualizacion);
                if(!collision_circle(xx,yy,radiobjeto,imagen,0,1)){break;}} break;
            default: i=0; do{
                xx=100+irandom(room_width-200);
                yy=200+irandom(room_height-300);
                i+=1;}
                until(i=60 or !collision_circle(xx,yy,radiobjeto,imagen,0,1)); break;}
        if(aux.area=0 and collision_point(xx,yy,objeto,0,1)){
            exit;}
        otrocoso=instance_create(xx,yy,provisiones);
        otrocoso.clase=0; otrocoso.municion=aux.arma;
        if(aux.area=0){
            otrocoso.fijo=1;} break;
    case 3: aux=instance_find(creavidas,irandom(instance_number(creavidas)-1));
        switch(aux.area){
            case 0: xx=aux.x; yy=aux.y; break;
            case 1: for(i=0;i<20;i+=1){
                xx=aux.x-visualizacion*0.5+irandom(visualizacion);
                yy=aux.y-visualizacion*0.5+irandom(visualizacion);
                if(!collision_circle(xx,yy,radiobjeto,imagen,0,1)){break;}} break;
            default: i=0; do{
                xx=100+irandom(room_width-200);
                yy=200+irandom(room_height-300);
                i+=1;}
                until(i=60 or !collision_circle(xx,yy,radiobjeto,imagen,0,1)); break;}
        if(aux.area=0 and collision_point(xx,yy,viducha,0,1)){
            exit;}
        otrocoso=instance_create(xx,yy,provisiones);
        otrocoso.clase=1; otrocoso.municion=aux.tipo; break;}}}
