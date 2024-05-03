function ActivateDaddy()
        {
	
			if(global.questStatus[? "ArrumarQuarto"] = 0)
				{
					with(oPai)
				    {
						NewTextBox("Este é seu pai ele esta assistindo ao jornal.\n Deseja Falar com ele ?",0,["1: Bom dia papai!!","0: ... "])
					}
				}
			else
				{
	 				with(oPai)
						{
							NewTextBox("Bom dia Vivi, já falou com sua mãe hoje?",0,["3: Sim... Ela brigou comigo..."]);
					    }
				}
		  

		}