/// @description  Dibuja

draw_set_alpha(1);
draw_sprite(spr_EBGames, image_index, x, y);

if (image_alpha > 0) {
    draw_set_alpha(image_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
}


