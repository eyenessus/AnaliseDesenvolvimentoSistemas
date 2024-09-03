/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package atividade2;

import java.util.Scanner;

import Hospedagem.Hospedagem;
import Pacote.Pacote;
import Transporte.Transporte;
import Venda.Venda;

/**
 *
 * @author emers
 */
public class Atividade2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String nomeClient, formaPagamento, destino, descricao, tipo;
        float valor, taxa, porcentagem,cotacao,margemLucro,taxaAdicional;
        int qntDias;

        System.out.println("Olá, por favor informe o nome do cliente: \n");
        nomeClient = input.nextLine();
    
        System.out.println("por favor informe o nome do tipo de hospedagem: \n");
        descricao = input.nextLine();
        System.out.println("Informe o valor da hospedagem: \n");
        valor = input.nextFloat();
        Hospedagem hospedagem = new Hospedagem(descricao, valor);
        input.nextLine(); 

        System.out.println("Informe o tipo de transporte: \n");
        tipo = input.nextLine();
        System.out.println("Informe o valor do transporte: \n");
        valor = input.nextFloat();

        Transporte transporte = new Transporte(tipo, valor);
        input.nextLine(); 


        System.out.println("Informe a forma de pagamento: \n");
        formaPagamento = input.nextLine();
        System.out.println("Informe o destino: \n");
        destino = input.nextLine();
        System.out.println("Informe a quantidade de dias: \n");
        qntDias = input.nextInt();

        Pacote pacote = new Pacote(destino, hospedagem, qntDias, transporte);


        System.out.println("Informe a taxa do pacote: \n");
        taxa = input.nextFloat();
        
        System.out.println("Informe a porcentagem: \n");
        porcentagem = input.nextFloat();

        System.out.println("Informe a cotação do dolar: \n");
        cotacao = input.nextFloat();


        System.out.println("Informe a margem de lucro: \n");
        margemLucro = input.nextFloat();

        System.out.println("Informe a taxa adicional: \n");
        taxaAdicional = input.nextFloat();

        Venda venda = new Venda(nomeClient,formaPagamento , pacote);
        
        System.out.println("O total da hospedagem é: $" + pacote.totalHospedagem());
        System.out.println("O total do pacote em DOLAR é: $" + venda.obterTotalDolar(margemLucro, taxaAdicional, cotacao));
        System.out.println("O total do pacote em REAIS é: R$" + venda.obterTotalDolar(margemLucro, taxaAdicional, cotacao) * cotacao);
        
        input.close();
    }
    
}
