draw_set_halign(fa_center);

if(paused){
    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
    draw_text(view_wport * .5, view_hport * .5, "Paused");
} 