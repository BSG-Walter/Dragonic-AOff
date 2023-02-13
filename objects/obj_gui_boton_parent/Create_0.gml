/// @description obtenemos el tamaño de la view
// You can write your code in this editor

//variables mal llamadas "render", pero son para dar a entender el area de la pantalla
//en que se dibuja el mundo, mas abajo de esa area se dibuja el inventario
renderW = obj_camara.resolutionW;
renderH = obj_camara.resolutionH  - obj_camara.interfaceH;

renderWMiddle = renderW * 0.5;
renderHMiddle = renderH * 0.5;

device = -1;

image_speed = 0;