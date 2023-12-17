programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{
		real cortesia = 30.99
		inteiro valor =0
		cadeia mesa[4]
		
		para(inteiro i = 0; i < 4; i++){
			
			escreva("Valor da mesa "+ (i+1) + "\n")
			leia(valor)
			se(valor <= cortesia){
				mesa[i] = "Não precisa pagar!"
			}senao{
				mesa[i] = "Precisa pagar R$ " + mat.arredondar(valor-cortesia,2)
			}
		}

			para(inteiro x = 0; x < 4; x++){
				
				escreva("Mesa "+x+" "+mesa[x]+  "\n")
			}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 368; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */