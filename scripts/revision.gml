resultado=true;
if(debug_mode=false){
if(argument0="omwam_predef00.ini" or argument0="omwam_predef01.ini" or argument0="omwam_predef02.ini"){
    resultado=false;}
else if(argument0="omwam_predef03.ini" or argument0="omwam_predef04.ini" or argument0="omwam_predef05.ini"){
    resultado=false;}
else if(argument0="omwam_predef06.ini" or argument0="omwam_predef07.ini" or argument0="omwam_predef08.ini"){
    resultado=false;}
else if(argument0="omwam_predef09.ini" or argument0="omwam_predef10.ini" or argument0="regalo_omwa.ini"){
    resultado=false;}
else if(argument0="config_omwa.ini" or argument0="map_omwa.ini" or argument0="omwam_regalo.ini"){
    resultado=false;}}
return(resultado);
