/// Init
ball_spotX = 0;
ball_spotY = 0;

//Set Downs
downs  = 4;
first_down = false;

//Limit spawning of playes to once per play
spawned = 0;

//SET MOUSE TARGET
instance_create_depth(x, y, 0, o_target);

//SET THE CONTROLLED PLAYER 
global.controlled_player = 1;

//BALL STATES
on_ground = 1;
in_air = 2;
held = 3;
//default state
ball_state = on_ground;

//GAME STATES
global.game_state = 0;

global.pick_play_state = 1;
global.spawn_state = 2;
global.pre_snap_state = 3
global.play_state = 4;

//PICK PLAY STATES 
global.play_offense_ready = false;
global.play_defense_ready = false;

//READ FIELD
scr_read_field();


//SET GLOBAL USER TEAM OFFENSE OR DEFENSE
//global.user_team = offense

//SET BALL LOCATION
ball_x = 0;
ball_y = 0;

//SET WHICH PLAYER HAS THE BALL
who_has_ball = 0;

//SET BALL POSSESSION
posession = 0;
home_posession = 1;
away_posession = 2;

//DEFINE PACKAGES
formation_offense = 0;
formation_defense = 0;

//FORMATIONS OFFENSE
f_gun = 1;
f_gun_split = 2;
f_i = 3;
f_i_spread = 4;
//FORMATIONS DEFENSE
f_4_3 = 5;

