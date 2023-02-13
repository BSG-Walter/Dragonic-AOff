/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (!mostrado) exit;

draw_sprite(spr_panel_skills, 0, x + renderWMiddle, y + renderHMiddle);
    
draw_set_font(fnt_Vedrana_6_bold);
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_right);
    
var hor = (x + renderWMiddle) - 64 + 109;
var ver = (y + renderHMiddle) - 108;
    
draw_text((x + renderWMiddle) - 64 + 95, ver + 33, string(obj_pj.skillsLibres));
    
draw_set_halign(fa_center);
draw_set_font(fnt_Vedrana_5_bold);
    
draw_text(hor, ver + 43, string(obj_pj.skills[0]));
draw_text(hor, ver + 53, string(obj_pj.skills[1]));
draw_text(hor, ver + 63, string(obj_pj.skills[2]));
draw_text(hor, ver + 73, string(obj_pj.skills[3]));
draw_text(hor, ver + 83, string(obj_pj.skills[4]));
draw_text(hor, ver + 92, string(obj_pj.skills[5]));
draw_text(hor, ver + 101, string(obj_pj.skills[6]));
draw_text(hor, ver + 111, string(obj_pj.skills[7]));
draw_text(hor, ver + 120, string(obj_pj.skills[8]));
draw_text(hor, ver + 130, string(obj_pj.skills[9]));
draw_text(hor, ver + 139, string(obj_pj.skills[10]));
draw_text(hor, ver + 148, string(obj_pj.skills[11]));
draw_text(hor, ver + 159, string(obj_pj.skills[12]));
draw_text(hor, ver + 168, string(obj_pj.skills[13]));
draw_text(hor, ver + 178, string(obj_pj.skills[14]));
draw_text(hor, ver + 188, string(obj_pj.skills[15]));
draw_text(hor, ver + 198, string(obj_pj.skills[16]));
draw_text(hor, ver + 207, string(obj_pj.skills[17]));