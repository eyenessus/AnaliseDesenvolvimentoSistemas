programa
{
	inclua biblioteca Util-->u
	
	funcao inicio()
	{

			caracter quarto[9],opcao,continua ='S'
			inteiro numQuarto
			para(inteiro i = 0; i< u.numero_elementos(quarto) e continua == 'S'; i++){
				quarto[i] = 'L'
			}
			
			faca{
				escreva("Qual número do quarto?\n")
				leia(numQuarto)
				
				escreva("O quarto está livre ou ocupado? (L/O)\n")
				leia(opcao)
				
				escolha(quarto[(numQuarto -1)]){
					caso 'L':
						se (opcao == 'L'){
							escreva("Quarto já está vazio!\n")
						}senao se(opcao == 'O'){
							escreva("Quarto foi ocupado!\n")
							quarto[(numQuarto -1)] = 'O'
						}
					pare
					caso 'O':
						se (opcao == 'O'){
							escreva("Quarto já está ocupado\n")
						}senao se (opcao == 'L'){
							escreva("Quarto foi liberado!\n")
								quarto[(numQuarto -1)] = 'L'
						}
					pare
				}
				escreva("deseja continuar? S/N")
				leia(continua)
				
			}enquanto(continua== 'S')
				
			para(inteiro i = 0; i< u.numero_elementos(quarto) e continua == 'N'; i++){
				escreva((1+i) +"-"+quarto[i] +"\n")
			}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1035; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */