programa
{
	
	funcao inicio()
	{	caracter opcao
		cadeia exame,acompanhado
		inteiro quantidadeRoupas =0,idade,roupaKg = 15
		real totalValor
		escreva("Onde você gostaria de ir? \n")
		escreva("Digite (L) para lavanderia ou (P) para piscina? \n")
		leia(opcao)
		escolha(opcao){
			caso 'P':
			caso 'p':
				escreva("Por favor informe sua idade \n")
				leia(idade)
				
				escreva("Está acompanhado? digite SIM ou NAO \n")
				leia(acompanhado)
				
				se(acompanhado == "NAO"){
					escreva("Você deve está acompanhado!")
					pare
				}
				escreva("Seu exame está em dia? digite SIM ou NAO\n")
				leia(exame)
					
					se(exame == "SIM" ou exame == "sim"){
						escreva("Pode ir na piscina \n")
					}senao se(exame == "NAO" ou exame == "nao"){
						escreva("Faça seu exame \n")
					}
				
				
				pare
			caso 'L':
			caso 'l':
			escreva("Quantos KG de roupas serão lavados?")
			leia(quantidadeRoupas)
			
			se(quantidadeRoupas <= 10){
				escreva("O valor da lavagem foi R$ " + quantidadeRoupas*(roupaKg+5))
			}senao{
				escreva("O valor da lavagem foi R$ " + quantidadeRoupas*roupaKg) 
			}
			pare
			caso contrario:
			escreva("O valor da lavagem foi R$ " + quantidadeRoupas*roupaKg)
			}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 481; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */