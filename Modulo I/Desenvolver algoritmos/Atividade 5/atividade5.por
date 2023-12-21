programa
{
	inclua biblioteca Matematica-->mat
	inclua biblioteca Util-->u
	real diaria = 100.00,despesa = 0.00
	inteiro opcao = 0,continua =1,indiceHospede =0, limiteHospede,despesas[9],qntDias[9]
	cadeia nomes[9],cpfs[9]
	funcao inicio()
	{

		faca{
			escreva("1– Cadastrar Hospedes 2– Exibir Hospedes Cadastrados 3– Reservar Área de Lazer 4– Calcular total a pagar 0 – Sair\n")
			leia(opcao)
			escolha(opcao){
				caso 0:
				continua = 0
				pare
				caso 1:
				cadastrarCliente()
				pare
				caso 2:
				exibirHospedes()
				pare
				caso 3:
				reservaLazer()
				pare
				caso 4:
				exibirTotal()
				pare
			}
		}enquanto(continua == 1)
		
		escreva("Obrigado por utilizar nosso sistema, volte sempre!\n")
	}
	
	funcao cadastrarCliente(){
		caracter cadastrar
		logico continuaCadastro = verdadeiro
		faca{
			se(indiceHospede == 10){
			escreva("Os cadastros estão lotados e retorne ao menu.\n")
			pare
		}senao{
			escreva("Digite o nome do hóspede?\n")
			leia(nomes[indiceHospede])
			
			escreva("Digite o CPF?\n")
			leia(cpfs[indiceHospede])

			escreva("Digite a quantidade de dias?\n")
			leia(qntDias[indiceHospede])

			escreva("Nome: "+nomes[indiceHospede] + "\n")
			
			escreva("CPF: "+cpfs[indiceHospede] + "\n")
			
			escreva("Quantidade de dias: "+qntDias[indiceHospede] + "\n")

			escreva("Confirma as informações (S/N)?\n")
			leia(cadastrar)

			se(cadastrar == 'S'){
				escreva("Cadastrado com sucesso!!\n")
				indiceHospede += 1
				continuaCadastro = falso
			}
		}
		
		}enquanto(continuaCadastro == verdadeiro)
	
	}
	
	funcao exibirHospedes( ){
		
		para(inteiro ind = 0; ind < indiceHospede; ind++){
			escreva("Indíce: "+ ind + "\n")
			
			escreva("Nome: "+nomes[ind] + "\n")
			
			escreva("CPF: "+cpfs[ind] + "\n")
			
			escreva("Quantidade de dias: "+qntDias[ind] + "\n")
		}
	}

	
	funcao reservaLazer(){
	inteiro academia =20,salaoFesta = 50, restaurante = 35,iHospede
	caracter lazer
	
		exibirHospedes()
		escreva("Qual o índice do hóspede?\n")
		leia(iHospede)
		
		escreva("Digite ‘A’ - ACADEMIA, ‘S’ -SALÃO DE FESTA ou ‘R’ -RESTAURANTE ? \n")
		leia(lazer)
		
		escolha(lazer){
			caso 'A':
			despesas[iHospede] += academia
			pare
			caso 'S':
			despesas[iHospede] += salaoFesta
			pare
			caso 'R':
			despesas[iHospede] += restaurante
			pare
		}
		escreva("O valor foi adicionado à sua conta.\n")
	}

	funcao exibirTotal(){
		inteiro iHospede
		faca{
		exibirHospedes()
		
		escreva("Qual o índice do hóspede?\n")
		leia(iHospede)

		se (iHospede > indiceHospede ){
			escreva("Digite um indice válido!\n")
		}senao{
			escreva("O hóspede " + nomes[iHospede] + " tem um gasto total de " + "R$ " +calculoTotal(iHospede) + "\n")
		}
		
		
		}enquanto(iHospede > indiceHospede)
	}
	
	funcao inteiro calculoTotal(inteiro indice) {
    		retorne despesas[indice]+qntDias[indice]*100
	}











	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2737; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */