programa
{
	
	funcao inicio()
	{
		inteiro convidados,alfa=150,beta =350,alfaAdd = 70
		escreva("Qual seria a quantiadade de convidados?")
		leia(convidados)
		
		se (convidados > 350 ou convidados < 0){
			escreva("Número de convidados inválido!")
		}senao{
			se (convidados > 0 e convidados <= alfa+alfaAdd){
				escreva("Use o auditório Alfa! \n")
				se(convidados>alfa){
					escreva("Inclua mais " + ( convidados - alfa )  +" cadeiras")	
					}
			}senao se(convidados > alfaAdd e convidados < beta){
				escreva("Use o auditório Beta")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */