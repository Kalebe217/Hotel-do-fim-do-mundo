// Definir a área de interação ao redor do inimigo
var _raio_interacao = 50 //((sprite_width *2 + sprite_height*2)/2);     // O raio da área de interação (em pixels)

// Verificar se o mouse está dentro da área de interação do inimigo
var _distancia_x = mouse_x - x;
var _distancia_y = mouse_y - y;
var _distancia = point_distance(x, y, mouse_x, mouse_y);


// Verificar se o clique foi dentro da área de interação e o botão de mouse foi pressionado
if (_distancia <= _raio_interacao && mouse_check_button_pressed(mb_left)) {
    show_message("Interação com o inimigo ocorreu!");
}


/*


var _intr = instance_place( x , y, obj_entidade);

if (_intr <= _raio_interacao){


	if (mouse_check_button_pressed(mb_left)) {
		
	show_message("funcionou")
	
	}
}

