//resultado= 0:normal, 1:vie-sab-noche, 2:halloween, 3:navidad, 4:1y2, 5:1y3
if(current_month=10){
    if(current_weekday=5 or current_weekday=6){
        if(current_hour<6){
            control.fecha=4;}
        else{
            control.fecha=2;}}
    else{
        control.fecha=2;}}
else if(current_month=12){
    if(current_weekday=5 or current_weekday=6){
        if(current_hour<6){
            control.fecha=5;}
        else{
            control.fecha=3;}}
    else{
        control.fecha=3;}}
else if(current_weekday=5 or current_weekday=6){
    if(current_hour<6){
        control.fecha=1;}
    else{
        control.fecha=0;}}
else{
    control.fecha=0;}
