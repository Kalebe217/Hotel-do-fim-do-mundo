

//colisão

var _col = instance_place( x + spdx, y, Colisor);



if (_col)
{

//checando direção direita
if (spdx > 0)
{
	x = _col.bbox_left + (x - bbox_right);
}

//checando direção esquerda
if (spdx < 0) 
{
	x = _col.bbox_right + (x - bbox_left);
	
}


spdx = 0;

}



var _col = instance_place( x, y + spdy, Colisor);

if (_col)
{
//updown

if (spdy < 0)
{
	y = _col.bbox_bottom + (y - bbox_top);
}


if (spdy > 0) 
{
	y = _col.bbox_top + (y - bbox_bottom);
	
}


spdy = 0;
}







//colisão com entidades

var _col_entidade = instance_place( x + spdx, y, obj_entidade);


if (_col_entidade)
{

//checando direção direita
if (spdx > 0)
{
	x = _col_entidade.bbox_left + (x - bbox_right);
}

//checando direção esquerda
if (spdx < 0) 
{
	x = _col_entidade.bbox_right + (x - bbox_left);
	
}
spdx = 0;
}




var _col_entidade = instance_place( x, y + spdy, obj_entidade);

if (_col_entidade)
{

//updown

if (spdy > 0)
{
	y = _col_entidade.bbox_top + (y - bbox_bottom);
}

//checando direção esquerda
if (spdy < 0) 
{
	y = _col_entidade.bbox_bottom + (y - bbox_top);
	
}

spdy = 0;

}


y += spdy;

x += spdx;





