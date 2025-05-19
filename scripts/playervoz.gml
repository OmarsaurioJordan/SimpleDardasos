if(audio_is_playing(argument1.habla)){
    audio_stop_sound(argument1.habla);}
switch(argument0){
    case 0://player golpeado
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound(s_golpeado_player1,7,0); break;
            case 1: argument1.habla=audio_play_sound(s_golpeado_player2,7,0); break;
            case 2: argument1.habla=audio_play_sound(s_golpeado_player3,7,0); break;} break;
    case 1://llamada aliados
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound(s_llamada_player1,7,0); break;
            case 1: argument1.habla=audio_play_sound(s_llamada_player2,7,0); break;
            case 2: argument1.habla=audio_play_sound(s_llamada_player3,7,0); break;} break;
    case 2://matar un enemigo
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound(s_mata_player1,7,0); break;
            case 1: argument1.habla=audio_play_sound(s_mata_player2,7,0); break;
            case 2: argument1.habla=audio_play_sound(s_mata_player3,7,0); break;} break;
    case 3://coloca puntoazul
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound(s_punto_player1,7,0); break;
            case 1: argument1.habla=audio_play_sound(s_punto_player2,7,0); break;
            case 2: argument1.habla=audio_play_sound(s_punto_player3,7,0); break;} break;
    case 4://quitar puntoazul
        argument1.habla=audio_play_sound(s_retirada_player,7,0); break;
    case 5://llegada player
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound(s_inicio_player1,7,0); break;
            case 1: argument1.habla=audio_play_sound(s_inicio_player2,7,0); break;
            case 2: argument1.habla=audio_play_sound(s_inicio_player3,7,0); break;} break;
    case 6://triunfo player
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound(s_triunfo_player1,7,0); break;
            case 1: argument1.habla=audio_play_sound(s_triunfo_player2,7,0); break;
            case 2: argument1.habla=audio_play_sound(s_triunfo_player3,7,0); break;} break;
    case 7://fracaso player
        switch(irandom(2)){
            case 0: argument1.habla=audio_play_sound(s_fracaso_player1,7,0); break;
            case 1: argument1.habla=audio_play_sound(s_fracaso_player2,7,0); break;
            case 2: argument1.habla=audio_play_sound(s_fracaso_player3,7,0); break;} break;
    case 8://curacion
        argument1.habla=audio_play_sound(s_curacion,7,0); break;}
