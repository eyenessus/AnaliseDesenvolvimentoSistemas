programa
{
	inclua biblioteca Texto-->txt
	inclua biblioteca Util-->u
	funcao inicio()
	{
	
		inteiro opcao=0,i = 0
		cadeia hospedes [2],nomeH
		
		faca{
			escreva("Digite uma opção 1- Cadastrar; 2- Pesquisar; 3- Sair.\n")
			leia(opcao)
			
		escolha(opcao){
			caso 1:
				escreva("informe um nome de hóspede?\n")
				
			para (i; i < u.numero_elementos(hospedes); i++ ){
				
				se(hospedes[i] == ""){
					leia(hospedes[i])
					escreva("Hóspede cadastrado!\n")
					pare
				}
			}
			
			se (i ==u.numero_elementos(hospedes)){
					escreva("Máximo de cadastros atingido!\n")
				}
				
			pare
			caso 2:
			escreva("Informe um nome?")
			leia(nomeH)	
			
			inteiro x = 0
			para (x; x < u.numero_elementos(hospedes); x++ ){
				se(nomeH == hospedes[x]){
					escreva("hóspede "+nomeH +" foi encontrado no índice "+ x +"\n" )
					pare
					}
				}
			se(x == u.numero_elementos(hospedes)){
				escreva("hóspede não encontrado\n")
			}
			pare
			caso 3:
			pare
		}

			
		}enquanto(opcao != 3)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 976; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */