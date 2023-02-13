/// @description Insert description here
// You can write your code in this editor
resolutionW = 600; //resolucion Width
resolutionH = 360; //resolucion Heigth
window_set_size(resolutionW, resolutionH);
interfaceH = 80; //altura de la interfaz
offsetW = resolutionW / 2;
offsetH = resolutionH / 2 - (interfaceH / 2)
view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = resolutionW;
view_hport[0] = resolutionH;

camera_destroy(view_camera[0]);
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0]);
display_set_gui_size(resolutionW, resolutionH);