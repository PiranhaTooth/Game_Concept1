if (up) state = "UP";
if (down) state = "DOWN";
if (left) state = "LEFT";
if (right) state = "RIGHT";
if (attack) state = "ATTACK_SWORD_START";
if (!up && !down && !left && !right && !attack) state = "IDLE";
