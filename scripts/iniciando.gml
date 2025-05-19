ini_open("config_omwa.ini");
if(!ini_key_exists("config","instalado")){//suma 1 a servidor, instalaciones
    if(os_is_network_connected()){
        ini_write_string("config","instalado","1");
        http_get("http://ojorcio.000webhostapp.com/mysql_omarsauriogames.php?ff=si&game=dardasos&version=?&jugadores=?&puntajes=?&descargas=?&ac=?");}}
if(ini_key_exists("config","sound")){//cargar estado sonido
    sonido=real(ini_read_string("config","sound","1"));
    if(sonido=1){
        control.sonido=1;
        audio_master_gain(1);
        sonidomusica("menu");}
    else if(sonido=0){
        control.sonido=0;
        audio_master_gain(1);}
    else{
        control.sonido=-1;
        audio_master_gain(0);}}
else{
    ini_write_string("config","sound","1");
    control.sonido=1;
    audio_master_gain(1);
    sonidomusica("menu");}
if(ini_key_exists("config","barras")){//cargar estado mostrar vidas
    if(real(ini_read_string("config","barras","1"))=1){
        control.barras=1;}
    else{
        control.barras=0;}}
else{
    ini_write_string("config","barras","1");}
if(ini_key_exists("config","dificultad")){//cargar ultima dificultad
    control.dificultad=floor(abs(real(ini_read_string("config","dificultad","0"))));
    if(control.dificultad>3){
        control.dificultad=0;}}
else{
    ini_write_string("config","dificultad","0");}
if(ini_key_exists("config","colision")){//cargar estado calidad colision
    if(real(ini_read_string("config","colision","1"))=1){
        altocol=1;
        audio_channel_num(300);}
    else{
        altocol=0;
        audio_channel_num(150);}}
else{
    ini_write_string("config","colision","1");}
if(ini_key_exists("config","ancho")){//cargar ultimo tamaño editor
    control.anch=real(ini_read_string("config","ancho","42"));
    control.alt=real(ini_read_string("config","alto","42"));
    if(control.anch>138){control.anch=138;}
    else if(control.anch<23){control.anch=23;}
    if(control.alt>108){control.alt=108;}
    else if(control.alt<18){control.alt=18;}}
if(ini_key_exists("config","manejo")){//cargar con o sin mouse
    if(real(ini_read_string("config","manejo","0"))=0){
        manejo=0;}
    else{
        manejo=1;}}
else{
    ini_write_string("config","manejo","0");}
if(ini_key_exists("config","lineas")){//cargar mostrar lineas
    if(real(ini_read_string("config","lineas","1"))=1){
        control.lineas=1;}
    else{
        control.lineas=0;}}
else{
    ini_write_string("config","lineas","1");}
if(ini_key_exists("config","ultimo")){//ultimo mapa seleccionado
    n=ini_read_string("config","ultimo","");
    for(i=1;i<=control.conteo;i+=1){
        if(control.pagina[i]=n){
            control.num=i;
            control.archivo=n;
            break;}}}
if(ini_key_exists("config","puntos")){//cargar puntajes juego aleatorio
    control.okey[0]=real(ini_read_string("config","puntos","1"));}
else{
    ini_write_string("config","puntos","1");
    control.okey[0]=1;}
if(ini_section_exists("mapas")){//cargar estados jugables mapas
    for(i=1;i<=control.conteo;i+=1){
        if(control.pagina[i]="demo" or control.pagina[i]="regalo"){
            control.okey[i]=2;
            ini_write_string("mapas","demo","2");}
        else if(ini_key_exists("mapas",control.pagina[i])){
            control.okey[i]=real(ini_read_string("mapas",control.pagina[i],"0"));}
        else{
            control.okey[i]=0;
            ini_write_string("mapas",control.pagina[i],"0");}}}
else{
    for(i=1;i<=control.conteo;i+=1){
        if(control.pagina[i]="demo" or control.pagina[i]="regalo"){
            control.okey[i]=2;
            ini_write_string("mapas","demo","2");}
        else{
            control.okey[i]=0;
            ini_write_string("mapas",control.pagina[i],"0");}}}
if(os_type!=os_windows){
    if(ini_read_string("config","mapalinux","")!=""){
        control.conteo=13;
        control.pagina[13]=ini_read_string("config","mapalinux","");}}
ini_close();
if(debug_mode=true){
    for(i=1;i<=control.conteo;i+=1){
        control.okey[i]=2;}}
else{
for(i=1;i<=control.conteo;i+=1){//bloquear mapas dependientes, jerarquicos
    if(control.okey[i]<1){
        n=string_digits(string_copy(control.pagina[i],string_length(control.pagina[i])-1,2));
        if(string_length(n)=2){
            n=round(real(n));
            if(n>0){
                n-=1;
                n=string(n);
                if(string_length(n)=1){
                    n="0"+n;}
                n=string_delete(control.pagina[i],string_length(control.pagina[i])-1,2)+n;
                for(j=1;j<=control.conteo;j+=1){
                    if(control.pagina[j]=n){
                        if(control.okey[j]<1){
                            control.okey[i]=-1;}
                        n="";
                        break;}}
                if(n!=""){
                    control.okey[i]=-1;}}}}}}
creasprites();
