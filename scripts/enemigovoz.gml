if(audio_is_playing(argument1.habla)){
    audio_stop_sound(argument1.habla);}
switch(argument0){
    case 0://enemigo golpeado
        switch(irandom(3)){
            case 0: argument1.habla=audio_play_sound_at(s_golpeado_enemigo1,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;
            case 1: argument1.habla=audio_play_sound_at(s_golpeado_enemigo2,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;
            case 2: argument1.habla=audio_play_sound_at(s_golpeado_enemigo3,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;
            case 3: argument1.habla=audio_play_sound_at(s_golpeado_enemigo4,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;} break;
    case 1://vio al jugador
        switch(irandom(3)){
            case 0: argument1.habla=audio_play_sound_at(s_visualizado_enemigo1,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;
            case 1: argument1.habla=audio_play_sound_at(s_visualizado_enemigo2,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;
            case 2: argument1.habla=audio_play_sound_at(s_visualizado_enemigo3,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;
            case 3: argument1.habla=audio_play_sound_at(s_visualizado_enemigo4,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;} break;
    case 2://llegada enemigo
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound_at(s_inicio_enemigo1,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;
            case 1: argument1.habla=audio_play_sound_at(s_inicio_enemigo2,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;
            case 2: argument1.habla=audio_play_sound_at(s_inicio_enemigo3,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;} break;
    case 3://gracias compartir municion
        argument1.habla=audio_play_sound_at(s_gracias_enemigo,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,5); break;
    case 4://curacion
        argument1.habla=audio_play_sound_at(s_cura_enemigo,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,2); break;}
