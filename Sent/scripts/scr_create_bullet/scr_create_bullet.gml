var _x = argument0;
var _y = argument1;
var _state = argument2;
var _speed = argument3;
var _direction = argument4;
var _object = argument5;
var _sprite = argument6;

//--sta
//0 -> slow
//1 -> circle left
//2 -> circle right
//3 -> nothing

var _ins = instance_create_layer(_x,_y,"Bullets", _object);
with(_ins)
{
	_ins.sprite_index = _sprite;
	_ins.bu_state = _state;
	_ins._speed = _speed;
	_ins.direction = _direction;
}