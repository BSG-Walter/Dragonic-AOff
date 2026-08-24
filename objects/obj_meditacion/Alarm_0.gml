/// @description  Incremento la maná

manaIncrementada = round(obj_pj.skills[3] * 1.15);

if (obj_pj.mana + manaIncrementada <= obj_pj.manaMax) {
    obj_pj.mana += manaIncrementada;
} else {
    obj_pj.mana = obj_pj.manaMax;
}

if (obj_pj.skills[3] < obj_pj.skillsNaturales[obj_pj.nivel]) {
    if (random(1) < 0.35 * SKILL_FACTOR) {
        obj_skills_libres.mostrado = false;
        obj_pj.skills[3]++;
        var idSubirSkills = crearTextoSubirSkill(3);
    }
}

alarm[0] = 25;

