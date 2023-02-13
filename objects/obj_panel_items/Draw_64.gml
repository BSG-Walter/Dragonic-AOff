/// @description Insert description here
// You can write your code in this editor
// Panel items

if (!mostrado) exit;
draw_set_alpha(0.85);
draw_sprite(spr_panel_items, image_index, x + renderWMiddle, y + renderHMiddle);
    
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_Vedrana_5_bold);
draw_text(x + renderWMiddle - 1, y + renderHMiddle - 104, campoCantidadS);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
    
var modPanelItemsX = 144;
var modPanelItemsY = 113;
draw_set_font(fnt_Vedrana_5_bold);
    
// Ícono y datos
    
var indicePanel = indiceItem;
    
if (indicePanel != -1) {
    
    if (sectorPj) {
    
        var indiceInv = obj_inventario.indiceInv[indicePanel];
        if (indiceInv != -1) {
            draw_set_alpha(1);
            draw_set_color(c_white);
            if (!modoBanco) {
                draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 12, "Precio: " + string(precioItem));
            } else {
                draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 12, "Cantidad: " + string(obj_inventario.cantInv[indicePanel])); 
            }
            draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 20, string(obj_panel_items.validoItem));
            draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 28, obj_panel_items.descItem);
            draw_sprite(spr_items, indiceInv, x + renderWMiddle - modPanelItemsX + 8 + 16, y + renderHMiddle - modPanelItemsY + 9 + 32);
            draw_set_alpha(0.85);
        }
        
    } else if (obj_panel_items.sectorNpc) {
        
        var indiceInv = obj_panel_items.idPadre.indiceNpc[indicePanel];
        if (indiceInv != -1) {
            draw_set_alpha(1);
            draw_set_color(c_white);
            if (!obj_panel_items.modoBanco) {
                draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 12, "Precio: " + string(obj_panel_items.precioItem));
            } else {
                draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 12, "Cantidad: " + string(obj_panel_items.idPadre.cantNpc[indicePanel]));
            }
            draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 20, string(obj_panel_items.validoItem));
            draw_text(x + renderWMiddle - modPanelItemsX + 47, y + renderHMiddle - modPanelItemsY + 28, obj_panel_items.descItem);
            draw_sprite(spr_items, indiceInv, x + renderWMiddle - modPanelItemsX + 8 + 16, y + renderHMiddle - modPanelItemsY + 9 + 32);
            draw_set_alpha(0.85);
        }
            
    }
        
    var posX = x + renderWMiddle - 144;
    var posY = y + renderHMiddle - 113;
        
    var modY = 47 + posY;
        
    if (obj_panel_items.sectorPj) {
		draw_sprite(spr_panelitems_rectangle,0,posX + 150, modY + ( 8 * indicePanel) - 1)
    } else if (obj_panel_items.sectorNpc) {
		draw_sprite(spr_panelitems_rectangle,0,posX + 8, modY + ( 8 * indicePanel) - 1);
    }
        
}
    
    
draw_set_alpha(1);
    
// Lista
    
draw_set_color(c_white);
var aux = 8;
    
// Inventario
	
for (var index = 0; index < 20; index ++){
	//inventario user
	draw_text(x + renderWMiddle - modPanelItemsX + 152, y + renderHMiddle - modPanelItemsY + 46 + (index * aux), string(obj_inventario.nombreInv[index]));
	//inventario npc
	draw_text(x + renderWMiddle - modPanelItemsX + aux, y + renderHMiddle - modPanelItemsY + 46 + (index * aux), string(obj_panel_items.idPadre.nombreNpc[index]));
}