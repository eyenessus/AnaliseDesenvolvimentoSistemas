programa
{
	
	funcao inicio()
	{
		real diariaHotel
		inteiro dias
		logico permitido
		
		faca {
			escreva("Valor da diária? \n")
			leia(diariaHotel)
			
			escreva("Quantas dias serão?\n")
			leia(dias)
			
			permitido = dias < 0 ou dias > 30 ou diariaHotel < 0 
			
			se(permitido == verdadeiro){
				escreva("Valor inválido\n")
			}
		}enquanto(permitido)
		escreva("Fim do programa")
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 211; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */