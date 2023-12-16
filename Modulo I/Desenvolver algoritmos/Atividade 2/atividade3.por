programa
{
	
	funcao inicio()
	{
		inteiro idade,gratuidade=0,meia =0,total=0
		cadeia nome
		caracter continua = 's'
		real diaria

		escreva("Valor da diaria? \n")
		leia(diaria)
		
		enquanto(continua == 's')
		{
	
		escreva("Qual seu nome? \n")
		leia(nome)
		
		escreva("Qual sua idade?\n")
		leia(idade)
		
		se (idade <= 4){
			escreva(nome + " possui gratuidade\n")
			gratuidade++
		}senao se(idade >= 80){
			escreva(nome + " paga meia\n")
			meia++
			total += diaria/2
		}senao{
			total += diaria
		}
		
		
		
		escreva("Deseja continuar a informar os dados (“S” ou “N”) \n")
		leia(continua)
		
		}
		escreva("Total de hospedagens: R$ " + total +"; " + gratuidade + " gratuidade(s); " + meia +" meia(s)")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 509; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */