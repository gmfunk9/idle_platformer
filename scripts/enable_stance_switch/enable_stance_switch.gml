///enable_stance_switch(movement)

var stanceSwitch=argument0;

if stanceSwitch != movement  
{
    if stanceSwitch == JUMP
    {
        image_index = 0;

    }
    
    switch (stanceSwitch)
    {
        case IDLE: show_debug_message("Switching to IDLE: " + string(stanceSwitch));
                    break;
        case MOVE: show_debug_message("Switching to IDLE: " + string(stanceSwitch));
                    break;
        case JUMP: show_debug_message("Switching to IDLE: " + string(stanceSwitch));
                    break;
        default: break;
        
    }
    movement=stanceSwitch;

    
}   