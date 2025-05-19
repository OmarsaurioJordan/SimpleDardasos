//crear arboles o arbustos o eliminar todos
audio_play_sound(s_excarvando,8,0);
switch(argument0){
    case 0:
        valor=real("0."+string(10+irandom(15)));
        with(natural){
            instance_destroy();}
        densidad=round(((room_width*room_height)/8096)*valor);
        for(i=0;i<densidad;i+=1){
            xx=20+irandom(room_width-40);
            yy=120+irandom(room_height-140);
            instance_create(xx,yy,natural);} break;
    case 1:
        with(natural){
            instance_destroy();} break;
    case 2:
        valor=real("0."+string(10+irandom(15)));
        with(adorno){
            instance_destroy();}
        densidad=round(((room_width*room_height)/4304)*valor);
        for(i=0;i<densidad;i+=1){
            xx=20+irandom(room_width-40);
            yy=120+irandom(room_height-140);
            instance_create(xx,yy,adorno);} break;
    case 3:
        with(adorno){
            instance_destroy();} break;
    case 4:
        with(cultivo){
            instance_destroy();} break;}
switch(argument0){
    case 0: with(natural){
        if(collision_point(x+48,y,natural,1,1)or collision_point(x-48,y,natural,1,1)
        or collision_point(x,y+48,natural,1,1)or collision_point(x,y-48,natural,1,1)){
            instance_destroy();}
        else if(collision_point(x,y+96,natural,1,1)or collision_point(x,y-96,natural,1,1)){
            instance_destroy();}
        else if(collision_point(x+48,y,casa,1,1)or collision_point(x-48,y,casa,1,1)
        or collision_point(x,y+48,casa,1,1)or collision_point(x,y-48,casa,1,1)){
            instance_destroy();}} break;
    case 2: with(adorno){
        if(collision_point(x+48,y,natural,1,1)or collision_point(x-48,y,natural,1,1)
        or collision_point(x,y+48,natural,1,1)or collision_point(x,y-48,natural,1,1)
        or collision_point(x,y+96,natural,1,1)){
            instance_destroy();}
        else if(collision_point(x+48,y,adorno,1,1)or collision_point(x-48,y,adorno,1,1)
        or collision_point(x,y+48,adorno,1,1)or collision_point(x,y-48,adorno,1,1)){
            instance_destroy();}
        else if(collision_point(x+48,y,casa,1,1)or collision_point(x-48,y,casa,1,1)
        or collision_point(x,y+48,casa,1,1)or collision_point(x,y+96,casa,1,1)){
            instance_destroy();}
        else if(collision_point(x,y+48,muro1,1,1)or collision_point(x,y+48,muro2,1,1)
        or collision_point(x,y+48,muro3,1,1)){
            instance_destroy();}} break;}
