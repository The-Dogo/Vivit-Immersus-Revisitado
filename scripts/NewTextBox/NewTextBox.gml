
function NewTextBox()
	{
		audio_play_sound(aUndTalk,1000,true,,1.46)
		var _obj;
		if(instance_exists(oText)) _obj = oTextQueued; else _obj = oText;
		with (instance_create_layer(0,0, "Instances",_obj))
			{
				mensagem = argument[0];	 //mensagem é igual a os diálogos do script "Dialogue Responses"
				if(instance_exists(other)) originInstance = other.id else originInstance = noone;
				if(argument_count > 1) background = argument[1]; else background = 1;
				if(argument_count > 2)
					{
						 _array=argument[2];
						for(var _i=0;_i<array_length(_array)  ;_i++)
							{
								responses[_i]=_array[_i];
							}
						for (var i = 0; i < array_length(responses); i++)
							{ 
								_markerPosition = string_pos (":", responses[i]);
								responseScripts[i] = string_copy(responses[i],1,_markerPosition-1);
								responseScripts[i] = real(responseScripts[i]);
								responses[i] = string_delete(responses[i],1,_markerPosition);
								breakpoint = 10;
							}
					}
				else
					{
						responses = [-1];
						responseScripts = [-1];
					}
  
  
  
  
			}

		with(obj_plyr)
			{
				if (state != PlayerStateLock)
					 {
						lastState = state;
						state = PlayerStateLock;
					 }				
			}

	}