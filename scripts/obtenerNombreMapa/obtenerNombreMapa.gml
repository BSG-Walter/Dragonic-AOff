/// @description  obtenerNombreMapa(room, i, j)
/// @param room
/// @param  i
/// @param  j
function obtenerNombreMapa(argument0, argument1, argument2) {

	var nombreMapaAux = "";
	
	if (argument0 = rm_arena) return "Arena";
	
	if (
	argument0 == rm_4 || argument0 == rm_5 || argument0 == rm_6 || argument0 == rm_7 || 
	argument0 == rm_8 || argument0 == rm_9 || argument0 == rm_10 || argument0 == rm_12 || 
	argument0 == rm_17
	) {
	    nombreMapaAux = "Bosques Helados - M. ";
	} else if (
	argument0 == rm_11 || argument0 == rm_13 || argument0 == rm_14 || argument0 == rm_15 || 
	argument0 == rm_16 || argument0 == rm_18 || argument0 == rm_19 || argument0 == rm_20 || 
	argument0 == rm_21 || argument0 == rm_22 || argument0 == rm_23
	) {
	    nombreMapaAux = "Bosques Maduros - M. ";
	} else if (argument0 = rm_24) {
	    nombreMapaAux = "Greage - M. ";
	} else if (argument0 = rm_25) {
	    nombreMapaAux = "Puerto Greage - M. ";
	} else if (argument0 = rm_26) {
	    nombreMapaAux = "Islas Espejismo - M. ";
	} else if (argument0 = rm_27) {
	    nombreMapaAux = "Islas Espejismo (Minas Hierro) - M. ";
	} else if (argument0 = rm_28) {
	    nombreMapaAux = "Entrada Dungeon Zaá Cik' - M. ";
	} else if (argument0 = rm_29) {
	    nombreMapaAux = "Entrada Dungeon Zerök - M. ";
	} else if (argument0 = rm_32) {
	    nombreMapaAux = "Desierto (Demonio Legión Oscura) - M. ";
	} else if (argument0 = rm_31 || argument0 = rm_44) {
	    nombreMapaAux = "Desierto - M. ";
	} else if (argument0 = rm_30) {
	    nombreMapaAux = "Desierto (Minas Oro) - M. ";
	} else if (argument0 = rm_33 || argument0 = rm_34) {
	    nombreMapaAux = "Islas Cálidas - M. ";
	} else if (
	argument0 == rm_35 || argument0 == rm_37 || argument0 == rm_38 || argument0 == rm_39 || 
	argument0 == rm_40 || argument0 == rm_41 || argument0 == rm_42 || argument0 == rm_43 || 
	argument0 == rm_46
	) {
	    nombreMapaAux = "Bosques Místicos - M. ";
	} else if (argument0 = rm_36) {
	    nombreMapaAux = "Bosques Místicos (Minas Plata) - M. ";
	} else if (argument0 = rm_45) {
	    nombreMapaAux = "Lotch - M. ";
	} else if (argument0 = rm_47) {
	    nombreMapaAux = "Puerto Lotch - M. ";
	} else if (
	argument0 == rm_48 || argument0 == rm_49 || argument0 == rm_50 || argument0 == rm_52 || 
	argument0 == rm_53 || argument0 == rm_54 || argument0 == rm_55 || argument0 == rm_56 || 
	argument0 == rm_57 || argument0 == rm_58 || argument0 == rm_59 || argument0 == rm_60 || 
	argument0 == rm_61 || argument0 == rm_62 || argument0 == rm_63 || argument0 == rm_64 || 
	argument0 == rm_65 || argument0 == rm_66 || argument0 == rm_68 || argument0 == rm_69 || 
	argument0 == rm_70 || argument0 == rm_71 || argument0 == rm_72 || argument0 == rm_73
	) {
	    nombreMapaAux = "Gran Selva Húmeda - M. ";
	} else if (argument0 = rm_51) {
	    nombreMapaAux = "Gran Selva Húmeda (Minas Hierro) - M. ";
	} else if (
	argument0 == rm_74 || argument0 == rm_75 || argument0 == rm_77 || 
	argument0 == rm_78 || argument0 == rm_82
	) {
	    nombreMapaAux = "Bosques de Bruma - M. ";
	} else if (argument0 = rm_76) {
	    nombreMapaAux = "Bosques de Bruma (Minas Plata) - M. ";
	} else if (argument0 = rm_67) {
	    nombreMapaAux = "Entrada Dungeon Wurl - M. ";
	} else if (argument0 = rm_79) {
	    nombreMapaAux = "Ringville - M. ";
	} else if (argument0 = rm_80) {
	    nombreMapaAux = "Puerto Ringville - M. ";
	} else if (argument0 = rm_81) {
	    nombreMapaAux = "Duhmundorth (Rey Armada Imperial) - M. ";
	} else if (argument0 = rm_83 || argument0 = rm_87) {
	    nombreMapaAux = "Minas de Hierro - M. ";
	} else if (argument0 = rm_85 || argument0 = rm_86) {
	    nombreMapaAux = "Minas de Plata - M. ";
	} else if (argument0 = rm_84) {
	    nombreMapaAux = "Minas de Oro - M. ";
	} else if (argument0 = rm_88) {
	    nombreMapaAux = "Dungeon Zaá Cik' - M. ";
	} else if (argument0 = rm_89 || argument0 = rm_90) {
	    nombreMapaAux = "Dungeon Wurl - M. ";
	} else if (argument0 = rm_91 || argument0 = rm_92 || argument0 = rm_93) {
	    nombreMapaAux = "Dungeon Zerök - M. ";
	} else if (argument0 = rm_158) {
	    nombreMapaAux = "Templo Legionario - M. ";
	} else if (argument0 = rm_159) {
	    nombreMapaAux = "Templo Imperial - M. ";
	} else {
	    nombreMapaAux = "Océano - M. ";
	}

	var nroRoom;

	if (argument0 != rm_83 && argument0 != rm_84 && argument0 != rm_85 && argument0 != rm_86 && argument0 != rm_87 && argument0 != rm_88 && argument0 != rm_89 && argument0 != rm_90 && argument0 != rm_91 && argument0 != rm_92 && argument0 != rm_93 && argument0 != rm_158 && argument0 != rm_159) {

	    // Matriz con números de room

	    matRoomsNro[0, 0] = 1;
	    matRoomsNro[0, 1] = 2;
	    matRoomsNro[0, 2] = 3;
	    matRoomsNro[0, 3] = 4;
	    matRoomsNro[0, 4] = 5;
	    matRoomsNro[0, 5] = 6;
	    matRoomsNro[0, 6] = 7;
	    matRoomsNro[0, 7] = 8;
	    matRoomsNro[0, 8] = 9;
	    matRoomsNro[0, 9] = 10;
	    matRoomsNro[0, 10] = 11;
	    matRoomsNro[0, 11] = 12;
    
	    matRoomsNro[1, 0] = 13;
	    matRoomsNro[1, 1] = 14;
	    matRoomsNro[1, 2] = 15;
	    matRoomsNro[1, 3] = 16;
	    matRoomsNro[1, 4] = 17;
	    matRoomsNro[1, 5] = 18;
	    matRoomsNro[1, 6] = 19;
	    matRoomsNro[1, 7] = 20;
	    matRoomsNro[1, 8] = 21;
	    matRoomsNro[1, 9] = 22;
	    matRoomsNro[1, 10] = 23;
	    matRoomsNro[1, 11] = 24;
    
	    matRoomsNro[2, 0] = 25;
	    matRoomsNro[2, 1] = 26;
	    matRoomsNro[2, 2] = 27;
	    matRoomsNro[2, 3] = 28;
	    matRoomsNro[2, 4] = 29;
	    matRoomsNro[2, 5] = 30;
	    matRoomsNro[2, 6] = 31;
	    matRoomsNro[2, 7] = 32;
	    matRoomsNro[2, 8] = 33;
	    matRoomsNro[2, 9] = 34;
	    matRoomsNro[2, 10] = 35;
	    matRoomsNro[2, 11] = 36;
    
	    matRoomsNro[3, 0] = 37;
	    matRoomsNro[3, 1] = 38;
	    matRoomsNro[3, 2] = 39;
	    matRoomsNro[3, 3] = 40;
	    matRoomsNro[3, 4] = 41;
	    matRoomsNro[3, 5] = 42;
	    matRoomsNro[3, 6] = 43;
	    matRoomsNro[3, 7] = 44;
	    matRoomsNro[3, 8] = 45;
	    matRoomsNro[3, 9] = 46;
	    matRoomsNro[3, 10] = 47;
	    matRoomsNro[3, 11] = 48;
    
	    matRoomsNro[4, 0] = 49;
	    matRoomsNro[4, 1] = 50;
	    matRoomsNro[4, 2] = 51;
	    matRoomsNro[4, 3] = 52;
	    matRoomsNro[4, 4] = 53;
	    matRoomsNro[4, 5] = 54;
	    matRoomsNro[4, 6] = 55;
	    matRoomsNro[4, 7] = 56;
	    matRoomsNro[4, 8] = 57;
	    matRoomsNro[4, 9] = 58;
	    matRoomsNro[4, 10] = 59;
	    matRoomsNro[4, 11] = 60;
    
	    matRoomsNro[5, 0] = 61;
	    matRoomsNro[5, 1] = 62;
	    matRoomsNro[5, 2] = 63;
	    matRoomsNro[5, 3] = 64;
	    matRoomsNro[5, 4] = 65;
	    matRoomsNro[5, 5] = 66;
	    matRoomsNro[5, 6] = 67;
	    matRoomsNro[5, 7] = 68;
	    matRoomsNro[5, 8] = 69;
	    matRoomsNro[5, 9] = 70;
	    matRoomsNro[5, 10] = 71;
	    matRoomsNro[5, 11] = 72;
    
	    matRoomsNro[6, 0] = 73;
	    matRoomsNro[6, 1] = 74;
	    matRoomsNro[6, 2] = 75;
	    matRoomsNro[6, 3] = 76;
	    matRoomsNro[6, 4] = 77;
	    matRoomsNro[6, 5] = 78;
	    matRoomsNro[6, 6] = 79;
	    matRoomsNro[6, 7] = 80;
	    matRoomsNro[6, 8] = 81;
	    matRoomsNro[6, 9] = 82;
	    matRoomsNro[6, 10] = 83;
	    matRoomsNro[6, 11] = 84;
    
	    matRoomsNro[7, 0] = 85;
	    matRoomsNro[7, 1] = 86;
	    matRoomsNro[7, 2] = 87;
	    matRoomsNro[7, 3] = 88;
	    matRoomsNro[7, 4] = 89;
	    matRoomsNro[7, 5] = 90;
	    matRoomsNro[7, 6] = 91;
	    matRoomsNro[7, 7] = 92;
	    matRoomsNro[7, 8] = 93;
	    matRoomsNro[7, 9] = 94;
	    matRoomsNro[7, 10] = 95;
	    matRoomsNro[7, 11] = 96;
    
	    matRoomsNro[8, 0] = 97;
	    matRoomsNro[8, 1] = 98;
	    matRoomsNro[8, 2] = 99;
	    matRoomsNro[8, 3] = 100;
	    matRoomsNro[8, 4] = 101;
	    matRoomsNro[8, 5] = 102;
	    matRoomsNro[8, 6] = 103;
	    matRoomsNro[8, 7] = 104;
	    matRoomsNro[8, 8] = 105;
	    matRoomsNro[8, 9] = 106;
	    matRoomsNro[8, 10] = 107;
	    matRoomsNro[8, 11] = 108;
    
	    matRoomsNro[9, 0] = 109;
	    matRoomsNro[9, 1] = 110;
	    matRoomsNro[9, 2] = 111;
	    matRoomsNro[9, 3] = 112;
	    matRoomsNro[9, 4] = 113;
	    matRoomsNro[9, 5] = 114;
	    matRoomsNro[9, 6] = 115;
	    matRoomsNro[9, 7] = 116;
	    matRoomsNro[9, 8] = 117;
	    matRoomsNro[9, 9] = 118;
	    matRoomsNro[9, 10] = 119;
	    matRoomsNro[9, 11] = 120;
    
	    matRoomsNro[10, 0] = 121;
	    matRoomsNro[10, 1] = 122;
	    matRoomsNro[10, 2] = 123;
	    matRoomsNro[10, 3] = 124;
	    matRoomsNro[10, 4] = 125;
	    matRoomsNro[10, 5] = 126;
	    matRoomsNro[10, 6] = 127;
	    matRoomsNro[10, 7] = 128;
	    matRoomsNro[10, 8] = 129;
	    matRoomsNro[10, 9] = 130;
	    matRoomsNro[10, 10] = 131;
	    matRoomsNro[10, 11] = 132;
    
	    matRoomsNro[11, 0] = 133;
	    matRoomsNro[11, 1] = 134;
	    matRoomsNro[11, 2] = 135;
	    matRoomsNro[11, 3] = 136;
	    matRoomsNro[11, 4] = 137;
	    matRoomsNro[11, 5] = 138;
	    matRoomsNro[11, 6] = 139;
	    matRoomsNro[11, 7] = 140;
	    matRoomsNro[11, 8] = 141;
	    matRoomsNro[11, 9] = 142;
	    matRoomsNro[11, 10] = 143;
	    matRoomsNro[11, 11] = 144;
    
	    // Matriz con indices de room
    
	    matRoomsIndx[0, 0] = rm_94;
	    matRoomsIndx[0, 1] = rm_95;
	    matRoomsIndx[0, 2] = rm_96;
	    matRoomsIndx[0, 3] = rm_97;
	    matRoomsIndx[0, 4] = rm_98;
	    matRoomsIndx[0, 5] = rm_99;
	    matRoomsIndx[0, 6] = rm_100;
	    matRoomsIndx[0, 7] = rm_17;
	    matRoomsIndx[0, 8] = rm_12;
	    matRoomsIndx[0, 9] = rm_9;
	    matRoomsIndx[0, 10] = rm_8;
	    matRoomsIndx[0, 11] = rm_7;
    
	    matRoomsIndx[1, 0] = rm_101;
	    matRoomsIndx[1, 1] = rm_102;
	    matRoomsIndx[1, 2] = rm_103;
	    matRoomsIndx[1, 3] = rm_104;
	    matRoomsIndx[1, 4] = rm_105;
	    matRoomsIndx[1, 5] = rm_20;
	    matRoomsIndx[1, 6] = rm_19;
	    matRoomsIndx[1, 7] = rm_18;
	    matRoomsIndx[1, 8] = rm_15;
	    matRoomsIndx[1, 9] = rm_10;
	    matRoomsIndx[1, 10] = rm_5;
	    matRoomsIndx[1, 11] = rm_6;
    
	    matRoomsIndx[2, 0] = rm_106;
	    matRoomsIndx[2, 1] = rm_107;
	    matRoomsIndx[2, 2] = rm_108;
	    matRoomsIndx[2, 3] = rm_27;
	    matRoomsIndx[2, 4] = rm_26;
	    matRoomsIndx[2, 5] = rm_21;
	    matRoomsIndx[2, 6] = rm_22;
	    matRoomsIndx[2, 7] = rm_24;
	    matRoomsIndx[2, 8] = rm_16;
	    matRoomsIndx[2, 9] = rm_11;
	    matRoomsIndx[2, 10] = rm_4;
	    matRoomsIndx[2, 11] = rm_109;
    
	    matRoomsIndx[3, 0] = rm_110;
	    matRoomsIndx[3, 1] = rm_111;
	    matRoomsIndx[3, 2] = rm_112;
	    matRoomsIndx[3, 3] = rm_113;
	    matRoomsIndx[3, 4] = rm_114;
	    matRoomsIndx[3, 5] = rm_3;
	    matRoomsIndx[3, 6] = rm_23;
	    matRoomsIndx[3, 7] = rm_25;
	    matRoomsIndx[3, 8] = rm_14;
	    matRoomsIndx[3, 9] = rm_13;
	    matRoomsIndx[3, 10] = rm_115;
	    matRoomsIndx[3, 11] = rm_116;
    
	    matRoomsIndx[4, 0] = rm_117;
	    matRoomsIndx[4, 1] = rm_76;
	    matRoomsIndx[4, 2] = rm_118;
	    matRoomsIndx[4, 3] = rm_119;
	    matRoomsIndx[4, 4] = rm_120;
	    matRoomsIndx[4, 5] = rm_28;
	    matRoomsIndx[4, 6] = rm_121;
	    matRoomsIndx[4, 7] = rm_122;
	    matRoomsIndx[4, 8] = rm_123;
	    matRoomsIndx[4, 9] = rm_35;
	    matRoomsIndx[4, 10] = rm_36;
	    matRoomsIndx[4, 11] = rm_39;
    
	    matRoomsIndx[5, 0] = rm_74;
	    matRoomsIndx[5, 1] = rm_75;
	    matRoomsIndx[5, 2] = rm_77;
	    matRoomsIndx[5, 3] = rm_78;
	    matRoomsIndx[5, 4] = rm_124;
	    matRoomsIndx[5, 5] = rm_30;
	    matRoomsIndx[5, 6] = rm_44;
	    matRoomsIndx[5, 7] = rm_125;
	    matRoomsIndx[5, 8] = rm_126;
	    matRoomsIndx[5, 9] = rm_38;
	    matRoomsIndx[5, 10] = rm_37;
	    matRoomsIndx[5, 11] = rm_40;
    
	    matRoomsIndx[6, 0] = rm_72;
	    matRoomsIndx[6, 1] = rm_73;
	    matRoomsIndx[6, 2] = rm_81;
	    matRoomsIndx[6, 3] = rm_82;
	    matRoomsIndx[6, 4] = rm_127;
	    matRoomsIndx[6, 5] = rm_31;
	    matRoomsIndx[6, 6] = rm_32;
	    matRoomsIndx[6, 7] = rm_128;
	    matRoomsIndx[6, 8] = rm_129;
	    matRoomsIndx[6, 9] = rm_47;
	    matRoomsIndx[6, 10] = rm_45;
	    matRoomsIndx[6, 11] = rm_41;
    
	    matRoomsIndx[7, 0] = rm_71;
	    matRoomsIndx[7, 1] = rm_70;
	    matRoomsIndx[7, 2] = rm_69;
	    matRoomsIndx[7, 3] = rm_68;
	    matRoomsIndx[7, 4] = rm_130;
	    matRoomsIndx[7, 5] = rm_131;
	    matRoomsIndx[7, 6] = rm_132;
	    matRoomsIndx[7, 7] = rm_133;
	    matRoomsIndx[7, 8] = rm_29;
	    matRoomsIndx[7, 9] = rm_46;
	    matRoomsIndx[7, 10] = rm_43;
	    matRoomsIndx[7, 11] = rm_42;
    
	    matRoomsIndx[8, 0] = rm_67;
	    matRoomsIndx[8, 1] = rm_66;
	    matRoomsIndx[8, 2] = rm_64;
	    matRoomsIndx[8, 3] = rm_61;
	    matRoomsIndx[8, 4] = rm_134;
	    matRoomsIndx[8, 5] = rm_56;
	    matRoomsIndx[8, 6] = rm_80;
	    matRoomsIndx[8, 7] = rm_48;
	    matRoomsIndx[8, 8] = rm_135;
	    matRoomsIndx[8, 9] = rm_33;
	    matRoomsIndx[8, 10] = rm_34;
	    matRoomsIndx[8, 11] = rm_136;
    
	    matRoomsIndx[9, 0] = rm_137;
	    matRoomsIndx[9, 1] = rm_65;
	    matRoomsIndx[9, 2] = rm_63;
	    matRoomsIndx[9, 3] = rm_60;
	    matRoomsIndx[9, 4] = rm_58;
	    matRoomsIndx[9, 5] = rm_55;
	    matRoomsIndx[9, 6] = rm_79;
	    matRoomsIndx[9, 7] = rm_49;
	    matRoomsIndx[9, 8] = rm_138;
	    matRoomsIndx[9, 9] = rm_139;
	    matRoomsIndx[9, 10] = rm_140;
	    matRoomsIndx[9, 11] = rm_141;
    
	    matRoomsIndx[10, 0] = rm_142;
	    matRoomsIndx[10, 1] = rm_143;
	    matRoomsIndx[10, 2] = rm_62;
	    matRoomsIndx[10, 3] = rm_59;
	    matRoomsIndx[10, 4] = rm_57;
	    matRoomsIndx[10, 5] = rm_54;
	    matRoomsIndx[10, 6] = rm_53;
	    matRoomsIndx[10, 7] = rm_50;
	    matRoomsIndx[10, 8] = rm_144;
	    matRoomsIndx[10, 9] = rm_145;
	    matRoomsIndx[10, 10] = rm_146;
	    matRoomsIndx[10, 11] = rm_147;
    
	    matRoomsIndx[11, 0] = rm_148;
	    matRoomsIndx[11, 1] = rm_149;
	    matRoomsIndx[11, 2] = rm_150;
	    matRoomsIndx[11, 3] = rm_151;
	    matRoomsIndx[11, 4] = rm_152;
	    matRoomsIndx[11, 5] = rm_153;
	    matRoomsIndx[11, 6] = rm_52;
	    matRoomsIndx[11, 7] = rm_51;
	    matRoomsIndx[11, 8] = rm_154;
	    matRoomsIndx[11, 9] = rm_155;
	    matRoomsIndx[11, 10] = rm_156;
	    matRoomsIndx[11, 11] = rm_157;
    
	    var k = 0;
	    var l = 0;
    
	    for (l = 0; l < 12; l++) {
	        if (matRoomsIndx[0, l] == room) {
	            k = 0;
	            break;
	        } else if (matRoomsIndx[1, l] == room) {
	            k = 1;
	            break;
	        } else if (matRoomsIndx[2, l] == room) {
	            k = 2;
	            break;
	        } else if (matRoomsIndx[3, l] == room) {
	            k = 3;
	            break;
	        } else if (matRoomsIndx[4, l] == room) {
	            k = 4;
	            break;
	        } else if (matRoomsIndx[5, l] == room) {
	            k = 5;
	            break;
	        } else if (matRoomsIndx[6, l] == room) {
	            k = 6;
	            break;
	        } else if (matRoomsIndx[7, l] == room) {
	            k = 7;
	            break;
	        } else if (matRoomsIndx[8, l] == room) {
	            k = 8;
	            break;
	        } else if (matRoomsIndx[9, l] == room) {
	            k = 9;
	            break;
	        } else if (matRoomsIndx[10, l] == room) {
	            k = 10;
	            break;
	        } else if (matRoomsIndx[11, l] == room) {
	            k = 11;
	            break;
	        }
	    }
    
	    if (argument1 != -1 && argument2 != -1) {
	        nroRoom = matRoomsNro[argument1, argument2];
	    } else {
	        nroRoom = matRoomsNro[k, l];
	    }    

	} else {
    
	    switch (argument0) {
	        case rm_83:
	            nroRoom = 145;
	            break;
	        case rm_84:
	            nroRoom = 146;
	            break;
	        case rm_85:
	            nroRoom = 147;
	            break;
	        case rm_86:
	            nroRoom = 148;
	            break;
	        case rm_87:
	            nroRoom = 149;
	            break;
	        case rm_88:
	            nroRoom = 150;
	            break;
	        case rm_89:
	            nroRoom = 152;
	            break;
	        case rm_90:
	            nroRoom = 151;
	            break;
	        case rm_91:
	            nroRoom = 153;
	            break;
	        case rm_92:
	            nroRoom = 154;
	            break;
	        case rm_93:
	            nroRoom = 155;
	            break;
	        case rm_158:
	            nroRoom = 156;
	            break;
	        case rm_159:
	            nroRoom = 157;
	            break;
	    }
    
	}

	nombreMapaAux += string(nroRoom);   

	return nombreMapaAux;



}
