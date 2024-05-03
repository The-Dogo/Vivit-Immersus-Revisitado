function ActivateLiftable(id) //Script para Levantar os brinquedos
		{
			if(global.iLifted == noone) //Checar se o player não tem nada já levantado e levantar objeto
	        {
		      global.iLifted = id;	
		      with(global.iLifted)
		          {
			        state = STATES.LIFTED;
					persistent = true;
					entityCollision = false;
					entityActivateScript = -1;
				  }
		    }
        }