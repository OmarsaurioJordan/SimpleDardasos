gano=1;
if(condicionador.capturados>0){
    gano=0;}
if(condicionador.x!=-150){
    if(instance_exists(player)){
        if(point_distance(player.x,player.y,condicionador.x,condicionador.y)>28){
            gano=0;}}
    else{
        gano=0;}}
if(condicionador.tiempo>0){
    gano=0;}
if(condicionador.cazados>0){
    gano=0;}
if(control.num=0){
    gano=0;}
if(control.alarm[1]=-1 and condicionador.x!=-150){
    if(condicionador.cazados=0 and condicionador.tiempo=0 and condicionador.capturados=0){
        control.alarm[1]=15;}}
if(gano=1){
    condicionador.vidas=-100;//significara triunfo
    condicionador.reloj5=0;
    ini_open("config_omwa.ini");
    mmm=real(ini_read_string("mapas",control.archivo,"0"));
    if(mmm=2 or mmm<real("1."+string(control.dificultad))){
        ini_write_string("mapas",control.archivo,"1."+string(control.dificultad));}
    ini_close();
    if(control.archivo="predef10"){
        file_copy("regalo_omwa.ini","omwam_regalo.ini");}
    if(instance_exists(player)){
        instance_create(player.x,player.y,ganando);
        with(player){
            instance_destroy();}}
    condicionador.num_enemigos=0;
    with(enemigo){
        if(vida>0){
            transformacion=1;
            instance_create(x,y,campesino);
            instance_destroy();}}}
