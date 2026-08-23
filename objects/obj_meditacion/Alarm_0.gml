/// @description  Incremento la maná

manaIncrementada = round(obj_pj.skills[3] * 1.15);

if (obj_pj.mana + manaIncrementada <= obj_pj.manaMax) {
    obj_pj.mana += manaIncrementada;
} else {
    obj_pj.mana = obj_pj.manaMax;
}

if (obj_pj.skills[3] < obj_pj.skillsNaturales[obj_pj.nivel]) {
    if (random(10) > 6.5) {
        obj_skills_libres.mostrado = false;
        obj_pj.skills[3]++;
        var idSubirSkills = instance_create_depth(obj_pj.x, obj_pj.y, 0, obj_efecto_subir_skill);
        idSubirSkills.indice = 3;
    }
}

alarm[0] = 25;

