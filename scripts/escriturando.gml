//numbre siendo escrito
var larguin, numbre;
numbre=argument0;
larguin=string_length(argument0);
if(keyboard_check_pressed(vk_backspace)){
    if(larguin>1){
        numbre=string_copy(numbre,1,larguin-1); poneryquitar(-2);}
    else{
        numbre=""; poneryquitar(-2);}}
else if(larguin<16){
    switch(keyboard_key){
        case vk_space:
            numbre+="_"; poneryquitar(-2); break;
        case ord('0'): case vk_numpad0:
            numbre+="0"; poneryquitar(-2); break;
        case ord('1'): case vk_numpad1:
            numbre+="1"; poneryquitar(-2); break;
        case ord('2'): case vk_numpad2:
            numbre+="2"; poneryquitar(-2); break;
        case ord('3'): case vk_numpad3:
            numbre+="3"; poneryquitar(-2); break;
        case ord('4'): case vk_numpad4:
            numbre+="4"; poneryquitar(-2); break;
        case ord('5'): case vk_numpad5:
            numbre+="5"; poneryquitar(-2); break;
        case ord('6'): case vk_numpad6:
            numbre+="6"; poneryquitar(-2); break;
        case ord('7'): case vk_numpad7:
            numbre+="7"; poneryquitar(-2); break;
        case ord('8'): case vk_numpad8:
            numbre+="8"; poneryquitar(-2); break;
        case ord('9'): case vk_numpad9:
            numbre+="9"; poneryquitar(-2); break;
        case ord('A'):
            numbre+="a"; poneryquitar(-2); break;
        case ord('B'):
            numbre+="b"; poneryquitar(-2); break;
        case ord('C'):
            numbre+="c"; poneryquitar(-2); break;
        case ord('D'):
            numbre+="d"; poneryquitar(-2); break;
        case ord('E'):
            numbre+="e"; poneryquitar(-2); break;
        case ord('F'):
            numbre+="f"; poneryquitar(-2); break;
        case ord('G'):
            numbre+="g"; poneryquitar(-2); break;
        case ord('H'):
            numbre+="h"; poneryquitar(-2); break;
        case ord('I'):
            numbre+="i"; poneryquitar(-2); break;
        case ord('J'):
            numbre+="j"; poneryquitar(-2); break;
        case ord('K'):
            numbre+="k"; poneryquitar(-2); break;
        case ord('L'):
            numbre+="l"; poneryquitar(-2); break;
        case ord('M'):
            numbre+="m"; poneryquitar(-2); break;
        case ord('N'):
            numbre+="n"; poneryquitar(-2); break;
        case ord('Ñ'):
            numbre+="ñ"; poneryquitar(-2); break;
        case ord('O'):
            numbre+="o"; poneryquitar(-2); break;
        case ord('P'):
            numbre+="p"; poneryquitar(-2); break;
        case ord('Q'):
            numbre+="q"; poneryquitar(-2); break;
        case ord('R'):
            numbre+="r"; poneryquitar(-2); break;
        case ord('S'):
            numbre+="s"; poneryquitar(-2); break;
        case ord('T'):
            numbre+="t"; poneryquitar(-2); break;
        case ord('U'):
            numbre+="u"; poneryquitar(-2); break;
        case ord('V'):
            numbre+="v"; poneryquitar(-2); break;
        case ord('W'):
            numbre+="w"; poneryquitar(-2); break;
        case ord('X'):
            numbre+="x"; poneryquitar(-2); break;
        case ord('Y'):
            numbre+="y"; poneryquitar(-2); break;
        case ord('Z'):
            numbre+="z"; poneryquitar(-2); break;}}
control.nombre=numbre;
