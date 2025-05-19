//respuesta del servidor: "?|?|?|?|?|?|?|?|?|?,0|0|0|0|0|0|0|0|0|0"
var cambio, caracter, jj;
cambio=0;
jj=0;
for(i=0;i<10;i+=1){
    control.trofeos[i]="";
    control.campeones[i]="";}
for(i=1;i<=string_length(argument0);i+=1){
    caracter=string_char_at(argument0,i);
    if(caracter=","){
        cambio=1;
        jj=0;}
    else if(caracter="|"){
        jj+=1;}
    else if(cambio=0){
        control.campeones[jj]+=caracter;}
    else{
        control.trofeos[jj]+=caracter;}}
if(control.servidor>0 and control.servidor>real(control.trofeos[9])){
    control.escribe=1;
    if(control.enviando=1){
        if(string_length(control.nombre)>0 and os_is_network_connected() and control.leeserver3=-1){
            sube_record(control.nombre,control.servidor);}
        control.enviando=0;}}
else{
    control.escribe=0;
    control.servidor=0;}
if(room=tabla){
    audio_play_sound(s_clic,8,0);}
//escribir en archivo respuesta del servidor
/*caracter=get_save_filename("text|*.txt","server_res");
if(caracter!=""){
    jj=file_text_open_write(caracter);
    file_text_write_string(jj,argument0);
    file_text_close(jj);}*/
