up = keyboard_check(ord('W'));
left = keyboard_check(ord('A'));
down = keyboard_check(ord('S'));
right = keyboard_check(ord('D'));
sprint = keyboard_check(vk_shift);

if ( abs( vy ) == 0)
{
    vx = (right - left) * player_speed;
}

if ( abs( vx ) == 0)
{
    vy = (down - up) * player_speed;
}

if sprint
{
    player_speed = 2.5;
}
else
{
    player_speed = 1.5;
}

x += vx;
y += vy;

image_speed = room_speed/500


/*var pressed_up = 0;
var pressed_left = 0;
var pressed_right = 0;
var pressed_down = 0;

var top_right_diagonal = up && left;
var bottom_left_diagonal = left && down;
var top_left_diagonal = up && right;
var bottom_right_diagonal = right && down;

my_speed = 1.5;
image_speed = room_speed/500;

if bottom_right_diagonal || top_left_diagonal|| bottom_left_diagonal || top_right_diagonal
{
    my_speed = 0;
    sprite_index = spr_player_idle_up;
}
else
{
    if sprint
    {
        my_speed = 2.5;
        image_speed = room_speed/700
    }
}


if up
{
    sprite_index = spr_player_up;
    y -= my_speed;
    pressed_up = 0;
}

if keyboard_check_released(ord('W'))
{
    pressed_up = 1;
}

if left
{
    sprite_index = spr_player_left;
    x -= my_speed;
    pressed_left = 0;
}

if keyboard_check_released(ord('A'))
{   
    pressed_left = 1;  
}  

if down
{
    sprite_index = spr_player_down;
    y += my_speed;
    pressed_down = 0;
}

if keyboard_check_released(ord('S'))
{   
    pressed_down = 1;  
}  

if right
{
    sprite_index = spr_player_right;
    x += my_speed;
    pressed_right = 0;
}

if keyboard_check_released(ord('D'))
{   
    pressed_right = 1;  
}  

//idle animation
if pressed_up = 1 
{
    sprite_index = spr_player_idle_up;
}

if pressed_left = 1 
{
    sprite_index = spr_player_idle_left;
}

if pressed_down = 1 
{
    sprite_index = spr_player_idle_down;
}

if pressed_right = 1 
{
    sprite_index = spr_player_idle_right;
}

