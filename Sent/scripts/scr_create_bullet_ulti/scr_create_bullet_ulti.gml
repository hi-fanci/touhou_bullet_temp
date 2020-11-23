var _x = argument0;
var _y = argument1;
var _abi = argument2;
var _dir = argument3;
var _name = argument4;
var _lev = argument5;

var spr_i = spr_noSprite;
var _de = 1;
switch(_name)
{
	case "bulbasaul"://----spr_bulbasaulLv0
		if(_lev < 2)
		{
			spr_i = spr_bulGrass0;
			_de = 1;
		}
		else
		{
			_de = 3;
			spr_i = spr_bulGrass1;
		}
	break;
	case "squirtle"://----spr_squirtleLv0
		if(_lev < 2)
		{
			spr_i = spr_bulWater0;
			_de = 1;
		}
		else
		{
			_de = 3;
			spr_i = spr_bulWater1;
		}
	break;
	case "charmander"://----spr_charmanderLv0
		if(_lev < 2)
		{
			spr_i = spr_bulFire0;
			_de = 1;
		}
		else
		{
			_de = 3;
			spr_i = spr_bulFire1;
		}
	break;
	case "pikachu"://----spr_pikachuLv0
		if(_lev < 2)
		{
			spr_i = spr_bulGrass0;
			_de = 1;
		}
		else
		{
			_de = 3;
			spr_i = spr_bulGrass1;
		}
	break;
}

var _ins = instance_create_layer(_x,_y,"Bullets", o_bulletAbility);
with(_ins)
{
	bullet_dir = _dir;
	sprite_index = spr_i;
	bullet_dame = _de;
	bullet_ability = _abi;
	image_angle = _dir;
}
