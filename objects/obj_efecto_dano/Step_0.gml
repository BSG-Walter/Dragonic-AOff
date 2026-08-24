/// @description  Control general

if (instance_exists(padre)) {
    x = padre.x;
    y = padre.y;
    depth = padre.depth - 10;
}

if (modY < limite) {
    modY++;
}

image_alpha -= 0.02;

if (image_alpha <= 0) {
    instance_destroy();
}



