input = string_insert(" ", argument0, string_length(argument0) + 1);
parameters = string_count(" ", input) + 1;

q = 1;
repeat(parameters) {
    parameter[q] = " ";
    q += 1;
}

o = 1;
p = 1;
repeat(string_length(input)) {
    if (string_char_at(input, o) != " ") {
        parameter[p] = string_insert(string_char_at(input, o), parameter[p], string_length(parameter[p]));
    } else {
        p += 1;
    }
    o += 1;
}

for (blu = 1; blu < parameters; blu += 1;) {
    parameter[blu] = string_delete(parameter[blu], string_length(parameter[blu]), 1);
}

/*
for(i=1;i<parameters;i+=1){
show_message("parameter"+" "+string(i)+": " + parameter[i]);
}
*/

//show_message("1"+parameter[1]+"1");
//show_message("1"+parameter[2]+"1");
//show_message("1"+parameter[3]+"1");
//show_message("1"+parameter[4]+"1");

//**//**//**//**//**//**//
//
//          THE COMMAND
//           CONSOLE
//
//          ENABLE DEVMODE
//
//          
//**//**//**//**//**//**//



switch (parameters - 1) {

    case 1:

        switch (parameter[1]) {

            case "killplayer": obj_Player.hp = 0; break;
            case "frames": show_message(fps); break;
            case "nextlevel": room_goto_next(); break;
            case "previouslevel": room_goto_previous(); break;
            case "randomseed": random_set_seed(random(10000000)); break;
            case "newgun": scr_NewGun(); break;
            case "restart": room_restart();
            default: break;

        }

        break;
        //
    case 2:

        switch (parameter[1]) {

            case "seed": random_set_seed(real(parameter[2])); show_message(random_get_seed()); break;
            default: break;

        }

        break;
        
    case 4:


        switch(parameter[1]){
        
        
                            case "set": scr_Set(parameter[2],parameter[3],parameter[4]); break;
                            //case "spawnatme": break;
                            
                            
                            }


        break;

    default: break;

}