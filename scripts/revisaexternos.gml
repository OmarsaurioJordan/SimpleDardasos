rrr=true;
if(!file_exists("externos/paracaidas.png")or !file_exists("externos/provisiones.png")or
!file_exists("externos/trapo.png")or !file_exists("externos/personaje.png")){
    rrr=false;}
if(!file_exists("externos/enemy.png")or !file_exists("externos/guardian.png")or
!file_exists("externos/campesino.png")or !file_exists("externos/cuerdas.png")){
    rrr=false;}
if(!file_exists("externos/brazos.png")or !file_exists("externos/salida.png")or
!file_exists("externos/municion.png")or !file_exists("externos/armas.png")){
    rrr=false;}
if(!file_exists("externos/patas.png")or !file_exists("externos/nopatas.png")or
!file_exists("externos/proyectiles.png")or !file_exists("externos/objetos.png")){
    rrr=false;}
if(!file_exists("casa.png")or !file_exists("externos/muro.png")or
!file_exists("natural.png")or !file_exists("externos/navidad.png")){
    rrr=false;}
if(!file_exists("externos/adorno.png")or !file_exists("externos/fantasma.png")or
!file_exists("externos/patillas.png")or !file_exists("externos/puerta.png")){
    rrr=false;}
return(rrr);
