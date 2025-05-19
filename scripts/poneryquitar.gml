//-1:quita >0:id del puesto
if(argument0=-1){
    audio_play_sound(s_quitar_edit,8,0);}
else if(argument0=-2){
    audio_play_sound(s_clic,8,0);}
else if(instance_exists(argument0)){
    audio_play_sound(s_poner_edit,8,0);}
