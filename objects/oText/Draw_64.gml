/// @desc Desenhar a Text Box
//erros se deve ao fato da "mensagem" ser um argumento variável e em teoria não é dos tipos de variável que as funções exigem 
NineSliceBoxStreched(sTextBox,x1,y1,x2,y2,background);
draw_set_font(tBrFonte);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);
var _print = string_copy(mensagem, 1,textProgess);

if(textProgess >= string_length(mensagem)) 
	{
		audio_stop_sound(aUndTalk)          	
	}

if (responses[0] != -1) && (textProgess >= string_length(mensagem))
	{
		for (var i = 0; i < array_length(responses); i++)
			{		
				_print += "\n"
				if (i == responseSelected) _print += "> ";
				_print += responses[i];
				if (i == responseSelected) _print += " <";		
			}	
	}

draw_text((x1+x2) /2, y1+8, _print);
draw_set_color(c_white);
draw_text((x1+x2) /2, y1+7, _print);


