if(audio_is_playing(argument1.habla)){
    audio_stop_sound(argument1.habla);}
switch(argument0){
    case 0://guardian golpeado
        switch(irandom(3)){
            case 0: argument1.habla=audio_play_sound_at(s_golpeado_guardian1,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;
            case 1: argument1.habla=audio_play_sound_at(s_golpeado_guardian2,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;
            case 2: argument1.habla=audio_play_sound_at(s_golpeado_guardian3,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;
            case 3: argument1.habla=audio_play_sound_at(s_golpeado_guardian4,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;} break;
    case 1://despedido como p2
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound_at(s_despedido_guardian1,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;
            case 1: argument1.habla=audio_play_sound_at(s_despedido_guardian2,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;
            case 2: argument1.habla=audio_play_sound_at(s_despedido_guardian3,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;} break;
    case 2://jugador le quita el arma
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound_at(s_quitarma_guardian1,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;
            case 1: argument1.habla=audio_play_sound_at(s_quitarma_guardian2,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;
            case 2: argument1.habla=audio_play_sound_at(s_quitarma_guardian3,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;} break;
    case 3://jugador le da un arma
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound_at(s_recivemunicion_guardian1,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;
            case 1: argument1.habla=audio_play_sound_at(s_recivemunicion_guardian2,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;
            case 2: argument1.habla=audio_play_sound_at(s_recivemunicion_guardian3,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;} break;
    case 4://reclutado como p2
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound_at(s_reclutar_guardian1,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;
            case 1: argument1.habla=audio_play_sound_at(s_reclutar_guardian2,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;
            case 2: argument1.habla=audio_play_sound_at(s_reclutar_guardian3,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,7); break;} break;
    case 5://llegada guardian
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound_at(s_inicio_guardian1,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;
            case 1: argument1.habla=audio_play_sound_at(s_inicio_guardian2,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;
            case 2: argument1.habla=audio_play_sound_at(s_inicio_guardian3,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,6); break;} break;
    case 6://gracias comparte municion
        argument1.habla=audio_play_sound_at(s_gracias_guardian,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,5); break;
    case 7://curacion
        argument1.habla=audio_play_sound_at(s_cura_guardian,argument1.x,argument1.y,0,visualizacion*0.1,visualizacion*1.5,1,0,2); break;}
