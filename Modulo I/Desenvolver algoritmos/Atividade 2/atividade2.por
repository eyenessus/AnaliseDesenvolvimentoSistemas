programa
{
	
	funcao inicio()
	{
		inteiro menorValor=0,maiorValor=0, total =0,qntHospedes,nQuarto,diaria,contador = 0
		
			escreva("Quantidade de hóspedes?")
			leia(qntHospedes)
			
		
			
			para(contador; contador < qntHospedes; contador++){
				
			escreva("Qual número do quarto?\n")
			leia(nQuarto)
			
			escreva("Valor da diária?\n")
			leia(diaria)
			
			escreva("Quarto " +nQuarto+" : R$ " + diaria+"\n")

			se (diaria < maiorValor){
				menorValor = diaria
			}senao{
				maiorValor = diaria
			}
			total += diaria
			 
			}
			escreva("Total de diárias: R$ "+ total +" Menor valor: "+ menorValor +" Maior valor: "+ maiorValor)
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 504; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */