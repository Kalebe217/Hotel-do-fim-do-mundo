//var _chao = place_meeting(x, y + 1, Chao);



var _left, _right, _jump, _up, _down, _click;

_left	= keyboard_check( inputs.left);
_right	= keyboard_check( inputs.right);
_up	= keyboard_check( inputs.up);
_down	= keyboard_check( inputs.down);
_int	= keyboard_check_pressed(inputs.int);
_click	= mouse_check_button_pressed(mb_left);

spdx   = (_right - _left) * spd;
spdy   = (_down - _up) * spd;


	
	 

// Para verificar se o botão direito do mouse foi pressionado

/*if (_click) {
	
	sprite_index = Attack_KG_1;
  
}

 if ( sprite_index = Attack_KG_1){
	
	if (image_index >= 5) {
            sprite_index = Idle_KG_1; 
            
        }
 }
 
 //teste para pulos
 if (_jump) {
	  sprite_index = Jump_KG_1  	
	}
 
  if   (sprite_index = Jump_KG_1) {  
	  
	  if (image_index >= 5) {
            sprite_index = Fall_KG_1; 
	}

  }
				*/
				
				
	
	if combate = false {
			
			// Variáveis de controle
tempo += 1; // Aumenta o tempo a cada frame


    // Se o personagem está na animação Idle_KG_1
    if (sprite_index == Idle_KG_1) {

        // Se o tempo passar de 3 segundos
        if (tempo >= room_speed * 4) { // Verifique com comparação (>=)
            sprite_index = Crouching_KG_1; // Troca para a animação de Crouching_KG_1
        }
    }

    // Se o personagem está na animação Crouching_KG_1
    if (sprite_index == Crouching_KG_1) {
        // Verifica se a animação atingiu o frame 3 ou mais
        if (image_index >= 2) {
            sprite_index = Crouching_Idle_KG_1; // Troca para a animação Crouching_Idle_KG_1
           
        }
		
    }


	
	//movimentação
	
	

if (spdx !=0){
	
	tempo = 0; 

 if (_left)
	{
			   sprite_index = Walking_KG_1
			   image_xscale = sign(spdx);
	}
	
	if (_right)
	{
		  	
			   sprite_index = Walking_KG_1
			   image_xscale = sign(spdx);
	}
}

if (spdy != 0) { 
	
	tempo = 0; 
	
		if (_up){	
				    sprite_index = Walking_KG_1
			
				}
				
	    if (_down){
				    sprite_index = Walking_KG_1
				  }
		  
		  
		           }



	
	if (sprite_index == Walking_KG_1){
if (spdx = 0 and spdy = 0){
		
	sprite_index = Idle_KG_1; 
}

}


/*

#region Dialogo

if distance_to_object(obj_par_npcs) <=10{
	if keyboard_check_[ressed(ord("F")){
	var _npc = instance_nearest(x, y, obj_par_npcs);
	var _dialogo = instance_create_layer(x, y,"Dialogo", obj_dialogo);
	_dialogo.npc_nome = _npc.nome;
	}
}
	

#endregion


*/



	}
	