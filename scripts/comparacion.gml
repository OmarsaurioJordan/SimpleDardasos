//municion arma1, tipo arma1, municion arma2, tipo arma2
muni=0;
if(argument0=0){
    muni+=4;}
if(argument2=0){
    muni-=4;}
muni+=argument0-argument2;//muni>0: tiende escoger a arma1 (cambio)
switch(argument3){
    case 0:
        switch(argument1){
            case 0: pref=-1*muni; break;
            case 1: pref=0; break;
            case 2: pref=-2; break;
            case 3: pref=3; break;
            case 4: pref=3; break;
            case 5: pref=4; break;
            case 6: pref=4; break;} break;
    case 1:
        switch(argument1){
            case 0: pref=0; break;
            case 1: pref=-1*muni; break;
            case 2: pref=-2; break;
            case 3: pref=2; break;
            case 4: pref=2; break;
            case 5: pref=3; break;
            case 6: pref=3; break;} break;
    case 2:
        switch(argument1){
            case 0: pref=2; break;
            case 1: pref=3; break;
            case 2: pref=-1*muni; break;
            case 3: pref=4; break;
            case 4: pref=4; break;
            case 5: pref=5; break;
            case 6: pref=5; break;} break;
    case 3:
        switch(argument1){
            case 0: pref=-3; break;
            case 1: pref=-3; break;
            case 2: pref=-4; break;
            case 3: pref=-1*muni; break;
            case 4: pref=0; break;
            case 5: pref=2; break;
            case 6: pref=2; break;} break;
    case 4:
        switch(argument1){
            case 0: pref=-2; break;
            case 1: pref=-2; break;
            case 2: pref=-3; break;
            case 3: pref=0; break;
            case 4: pref=-1*muni; break;
            case 5: pref=3; break;
            case 6: pref=3; break;} break;
    case 5:
        switch(argument1){
            case 0: pref=-3; break;
            case 1: pref=-3; break;
            case 2: pref=-4; break;
            case 3: pref=-2; break;
            case 4: pref=-2; break;
            case 5: pref=-1*muni; break;
            case 6: pref=0; break;} break;
    case 6:
        switch(argument1){
            case 0: pref=-3; break;
            case 1: pref=-3; break;
            case 2: pref=-4; break;
            case 3: pref=-2; break;
            case 4: pref=-2; break;
            case 5: pref=0; break;
            case 6: pref=-1*muni; break;} break;}
if(muni+pref>0){
    return(true);}
else{
    return(false);}
