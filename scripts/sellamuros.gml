with(muro1){
    if(collision_point(x+36,y,muro1,1,1)or x=room_width-48){
        instance_create(x+24,y,muro0);}
    if(collision_point(x-36,y,muro1,1,1)or x=48){
        instance_create(x-24,y,muro0);}
    if(collision_point(x,y+36,muro1,1,1)or y=room_height-48){
        instance_create(x,y+24,muro0);}
    if(collision_point(x,y-36,muro1,1,1)or y=144){
        instance_create(x,y-24,muro0);}
    if(collision_point(x+36,y+36,muro1,1,1)and
    !collision_point(x+36,y,muro1,1,1)and !collision_point(x,y+36,muro1,1,1)){
        instance_create(x+24,y+24,muro0);}
    if(collision_point(x+36,y-36,muro1,1,1)and
    !collision_point(x+36,y,muro1,1,1)and !collision_point(x,y-36,muro1,1,1)){
        instance_create(x+24,y-24,muro0);}
    if(collision_point(x-36,y+36,muro1,1,1)and
    !collision_point(x-36,y,muro1,1,1)and !collision_point(x,y+36,muro1,1,1)){
        instance_create(x-24,y+24,muro0);}
    if(collision_point(x-36,y-36,muro1,1,1)and
    !collision_point(x-36,y,muro1,1,1)and !collision_point(x,y-36,muro1,1,1)){
        instance_create(x-24,y-24,muro0);}}
with(muro2){
    if(collision_point(x+36,y,muro2,1,1)or x=room_width-48){
        instance_create(x+24,y,muro0);}
    if(collision_point(x-36,y,muro2,1,1)or x=48){
        instance_create(x-24,y,muro0);}
    if(collision_point(x,y+36,muro2,1,1)or y=room_height-48){
        instance_create(x,y+24,muro0);}
    if(collision_point(x,y-36,muro2,1,1)or y=144){
        instance_create(x,y-24,muro0);}
    if(collision_point(x+36,y+36,muro2,1,1)and
    !collision_point(x+36,y,muro2,1,1)and !collision_point(x,y+36,muro2,1,1)){
        instance_create(x+24,y+24,muro0);}
    if(collision_point(x+36,y-36,muro2,1,1)and
    !collision_point(x+36,y,muro2,1,1)and !collision_point(x,y-36,muro2,1,1)){
        instance_create(x+24,y-24,muro0);}
    if(collision_point(x-36,y+36,muro2,1,1)and
    !collision_point(x-36,y,muro2,1,1)and !collision_point(x,y+36,muro2,1,1)){
        instance_create(x-24,y+24,muro0);}
    if(collision_point(x-36,y-36,muro2,1,1)and
    !collision_point(x-36,y,muro2,1,1)and !collision_point(x,y-36,muro2,1,1)){
        instance_create(x-24,y-24,muro0);}}
with(muro3){
    if(collision_point(x+36,y,muro3,1,1)or x=room_width-48){
        instance_create(x+24,y,muro0);}
    if(collision_point(x-36,y,muro3,1,1)or x=48){
        instance_create(x-24,y,muro0);}
    if(collision_point(x,y+36,muro3,1,1)or y=room_height-48){
        instance_create(x,y+24,muro0);}
    if(collision_point(x,y-36,muro3,1,1)or y=144){
        instance_create(x,y-24,muro0);}
    if(collision_point(x+36,y+36,muro3,1,1)and
    !collision_point(x+36,y,muro3,1,1)and !collision_point(x,y+36,muro3,1,1)){
        instance_create(x+24,y+24,muro0);}
    if(collision_point(x+36,y-36,muro3,1,1)and
    !collision_point(x+36,y,muro3,1,1)and !collision_point(x,y-36,muro3,1,1)){
        instance_create(x+24,y-24,muro0);}
    if(collision_point(x-36,y+36,muro3,1,1)and
    !collision_point(x-36,y,muro3,1,1)and !collision_point(x,y+36,muro3,1,1)){
        instance_create(x-24,y+24,muro0);}
    if(collision_point(x-36,y-36,muro3,1,1)and
    !collision_point(x-36,y,muro3,1,1)and !collision_point(x,y-36,muro3,1,1)){
        instance_create(x-24,y-24,muro0);}}
