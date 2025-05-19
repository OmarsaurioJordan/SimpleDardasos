audio_stop_sound(s_menu);
audio_stop_sound(s_juego);
audio_stop_sound(s_editor);
audio_stop_sound(s_tabla);
switch(argument0){
    case "menu": audio_play_sound(s_menu,8,true); break;
    case "juego": audio_play_sound(s_juego,8,true); break;
    case "editor": audio_play_sound(s_editor,8,true); break;
    case "tabla": audio_play_sound(s_tabla,8,true); break;}
