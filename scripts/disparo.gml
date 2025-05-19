//angulo del disparo, id de quien llama
fallo=0;
if(argument1.object_index!=player and argument1.object_index!=ayudante){
    fallo=choose(-1,1)*irandom(10);}
if(argument1.arma=3){
    audio_play_sound_at(s_disp_perdigones,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,3);
    for(i=0;i<64;i+=16){
        switch(argument1.object_index){
            case player: tiro=instance_create(argument1.x,argument1.y,proyectil1);
                tiro.mio=1; break;
            case enemigo: tiro=instance_create(argument1.x,argument1.y,proyectil2); break;
            case guardian: tiro=instance_create(argument1.x,argument1.y,proyectil1);
                if(argument1.super=1){tiro.mio=-2;} break;
            case ayudante: tiro=instance_create(argument1.x,argument1.y,proyectil1);
                tiro.mio=-1; break;}
        tiro.tipo=3;//perdigon
        tiro.direction=argument0+fallo+24-i;
        tiro.rapides=vbalinperdigon;
        tiro.duracion=tperdigon;}}
else{
    switch(argument1.object_index){
        case player: tiro=instance_create(argument1.x,argument1.y,proyectil1);
            tiro.mio=1; break;
        case enemigo: tiro=instance_create(argument1.x,argument1.y,proyectil2); break;
        case guardian: tiro=instance_create(argument1.x,argument1.y,proyectil1);
            if(argument1.super=1){tiro.mio=-1;} break;
        case ayudante: tiro=instance_create(argument1.x,argument1.y,proyectil1);
            tiro.mio=-1; break;}
    tiro.tipo=argument1.arma;
    tiro.direction=argument0+fallo;
    switch(tiro.tipo){
        case 0://espada
            tiro.rapides=20;
            tiro.duracion=6; break;
        case 1://flecha
            tiro.rapides=vflecha;
            tiro.duracion=tflecha;
            audio_play_sound_at(s_disp_flecha,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,3); break;
        case 2://balin
            tiro.rapides=vbalinperdigon;
            tiro.duracion=tbalin;
            audio_play_sound_at(s_disp_balin,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,3); break;
        case 4://disco
            tiro.rapides=vdisco;
            tiro.duracion=tdisco;
            audio_play_sound_at(s_disp_disco,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,3); break;
        case 5://avion
            tiro.rapides=vavion;
            tiro.duracion=tavion;
            audio_play_sound_at(s_disp_avion,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,4); break;
        case 6://bomba
            tiro.rapides=vbomba;
            tiro.duracion=tbomba;
            audio_play_sound_at(s_disp_bomba,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,4); break;}}
