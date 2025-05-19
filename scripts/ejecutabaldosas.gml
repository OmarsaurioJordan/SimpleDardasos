tile_layer_delete(12000);
tile_layer_delete(13000);
if(argument0="map_omwa.ini"){
    ini_open("map_omwa.ini");}
else{
    ini_open("omwam_"+argument0+".ini");}
if(ini_section_exists("baldosa")){
    i=0;
    do{
        if(ini_key_exists("baldosa","x"+string(i))){
            if(tre_d=1){
                switch(real(ini_read_string("baldosa","t"+string(i),"0"))){
                    case 0: tile_add(ddd_tierra,0,0,69,69,real(ini_read_string("baldosa","x"+string(i),"0"))-35,
                    real(ini_read_string("baldosa","y"+string(i),"0"))-35,13000); break;
                    case 1: tile_add(ddd_baldosa1,0,0,50,50,real(ini_read_string("baldosa","x"+string(i),"0"))-25,
                    real(ini_read_string("baldosa","y"+string(i),"0"))-25,12000); break;
                    case 2: tile_add(ddd_baldosa2,0,0,50,50,real(ini_read_string("baldosa","x"+string(i),"0"))-25,
                    real(ini_read_string("baldosa","y"+string(i),"0"))-25,12000); break;
                    case 3: tile_add(ddd_baldosa3,0,0,50,50,real(ini_read_string("baldosa","x"+string(i),"0"))-25,
                    real(ini_read_string("baldosa","y"+string(i),"0"))-25,12000); break;}}
            else{
                switch(real(ini_read_string("baldosa","t"+string(i),"0"))){
                    case 0: tile_add(dd_tierra,0,0,69,69,real(ini_read_string("baldosa","x"+string(i),"0"))-35,
                    real(ini_read_string("baldosa","y"+string(i),"0"))-35,13000); break;
                    case 1: tile_add(dd_baldosa1,0,0,50,50,real(ini_read_string("baldosa","x"+string(i),"0"))-25,
                    real(ini_read_string("baldosa","y"+string(i),"0"))-25,12000); break;
                    case 2: tile_add(dd_baldosa2,0,0,50,50,real(ini_read_string("baldosa","x"+string(i),"0"))-25,
                    real(ini_read_string("baldosa","y"+string(i),"0"))-25,12000); break;
                    case 3: tile_add(dd_baldosa3,0,0,50,50,real(ini_read_string("baldosa","x"+string(i),"0"))-25,
                    real(ini_read_string("baldosa","y"+string(i),"0"))-25,12000); break;}}
            i+=1;}
        else{
            i=-1;}}
    until(i=-1);}
ini_close();
