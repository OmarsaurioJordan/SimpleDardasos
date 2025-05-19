var i, nuevo, viejo;
for(i=0;i<instance_number(enemigo);i+=1){
    viejo=instance_find(enemigo,i);
    repeat(control.dificultad){
        nuevo=instance_create(viejo.x-10+random(20),viejo.y-10+random(20),empacado);
        nuevo.arma=viejo.arma;
        nuevo.municion=viejo.municion;
        nuevo.mente=viejo.mente;
        nuevo.estado=viejo.estado;
        nuevo.recarga=viejo.recarga;
        nuevo.firme=viejo.firme;}}
condicionador.alarm[0]=4;
