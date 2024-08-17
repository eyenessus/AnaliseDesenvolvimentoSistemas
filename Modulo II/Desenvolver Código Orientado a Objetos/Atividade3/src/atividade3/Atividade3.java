/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package atividade3;

import java.util.Scanner;

/**
 *
 * @author emers
 */
public class Atividade3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float diaria;
        int idade;
        String nome;
        char adicionar = 'N';
        int total = 0, gratuidade = 0, meia = 0;

        System.out.print("Qual valor padrão da diária?\n");
        System.out.print("Digite número por exemplo: 10 ou 10.50\n");
        diaria = entrada.nextFloat();
        entrada.nextLine();
        
        do {
            System.out.print("Qual nome do hóspede?\n");
            nome = entrada.nextLine();
            System.out.print("Qual idade do hóspede?\n");
            idade = entrada.nextInt();
            entrada.nextLine();
            
            if (idade <= 4) {
                gratuidade++;
                System.out.print(nome + " Possui gratuidade!\n");

            } else if (idade >= 80) {
                meia++;
                total += total/2;
                System.out.print(nome + " Paga meia\n");
            }else{
                total += diaria;
            }

            System.out.print("Deseja adicionar mais hóspede? Digite [S] para Sim ou [PARA] para Não\n");
            adicionar = entrada.next().charAt(0);
            entrada.nextLine();
        } while (adicionar == 'S');

        System.out.print("Total de hospedagens: R$" + total + ", " + gratuidade + " gratuidade(s); " + meia + " meia(s)!");

    }

}
