if(audio_is_playing(argument1.habla)){
    audio_stop_sound(argument1.habla);}
switch(argument0){
    case 0://llama aliados
        argument1.habla=audio_play_sound(s_llamandolos_obrero,7,0); break;
    case 1://coloca puntoazul
        argument1.habla=audio_play_sound(s_ponepunto_obrero,7,0); break;
    case 2://quitar puntoazul
        argument1.habla=audio_play_sound(s_quitapunto_obrero,7,0); break;
    case 3://nuevo guardian
        argument1.habla=audio_play_sound(s_nuevosoldado_obrero,7,0); break;
    case 4://expulsar guardian
        argument1.habla=audio_play_sound(s_expulsar_obrero,7,0); break;}
