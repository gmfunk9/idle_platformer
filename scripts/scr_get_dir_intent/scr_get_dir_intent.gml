var dir  = argument0;

dir_intent= round(dir/90); //dir is going to be 0 for right, 1 for up, 2,3 ectera, 

switch (dir_intent) {
    case 0:
		dir_intent= RIGHT;
        break;
    case 1:
		dir_intent= UP;
        break;
    case 2:
		dir_intent= LEFT;
        break;
    case 3:
		dir_intent= DOWN;
        break;
    default:
		dir_intent= RIGHT;
        break;
}