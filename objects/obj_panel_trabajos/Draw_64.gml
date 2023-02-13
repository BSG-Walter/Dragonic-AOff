/// @description Insert description here
// You can write your code in this editor
// Panel trabajos

if (!mostrado) exit;
    
draw_set_alpha(0.85);
draw_sprite(sprite_index, 0, x + renderWMiddle, y + renderHMiddle);
    
var modPanelItemsX = 144;
var modPanelItemsY = 113;
draw_set_font(fnt_Vedrana_5_bold);
    
// Ícono y datos
    
var indicePanel = indiceItem;
    
if (indicePanel != -1) {
    
    var indiceInv = listaItems[indicePanel];
        
    if (indiceInv != -1) {
        draw_set_alpha(1);
        draw_set_color(c_white);
        draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 12, string(validoItem));
        draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 20, descItem);
        draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 28, elementosItem);
        draw_sprite(spr_items, indiceInv, x + renderWMiddle - modPanelItemsX + 8 + 16, y + renderHMiddle - modPanelItemsY + 9 + 32);
        draw_set_alpha(0.85);
    }        
        
    var posX = x + renderWMiddle - 144;
    var posY = y + renderHMiddle - 113;
        
    var modY = 47 + posY;
        
    draw_sprite(spr_panelitems_rectangle2, 0 , posX + 8, modY + ( 8 * indicePanel) - 1)
        
}
    
if (listaItems[0] == -1) {
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 12, "No tenés skills suficientes para fabricar ningún ítem");
}
    
draw_set_alpha(1);
    
// Lista
    
draw_set_color(c_white);
// Inventario
    
for (var index = 0; index < 20; index ++){
	//inventario
	draw_text(x + renderWMiddle - modPanelItemsX + 8, y + renderHMiddle - modPanelItemsY + 46 + (index * 8), string(nombreItems[index]));
}