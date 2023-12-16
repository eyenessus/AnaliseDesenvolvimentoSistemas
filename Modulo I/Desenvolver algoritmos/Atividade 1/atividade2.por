programa
{
	
	funcao inicio()
	{
		real lcafe = 0.2,lagua = 0.5
		inteiro salgadinhos = 7,convidados

		escreva("Qual seria a quantidade de convidados?")
		leia(convidados)
		
		se(convidados < 30 ou convidados > 350){
			escreva("Quantidade de convidados superior ou inferior à capacidade!")	
		}senao{
			escreva(convidados*lcafe + " litro(s) de café ", convidados*lagua + " litro(s) de água "+ convidados*salgadinhos + " salgadinho(s)")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 15; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */