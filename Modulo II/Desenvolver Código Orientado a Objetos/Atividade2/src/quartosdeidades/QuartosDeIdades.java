/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package quartosdeidades;

import java.util.Scanner;

/**
 *
 * @author emers
 */
public class QuartosDeIdades {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
       int idade1,idade2;
       String nome1,nome2;
       
       System.out.print("Seja bem vindo!\n");
       System.out.print("Qual nome do hóspede?\n");
       nome1 = entrada.nextLine();
       System.out.print("Qual idade?\n");
       idade1 = entrada.nextInt();
       entrada.nextLine();
       
       System.out.print("Qual nome do outro hóspede?\n");
       nome2 = entrada.nextLine();
       System.out.print("Qual idade?\n");
       idade2 = entrada.nextInt();
       
       
       if(idade1 > idade2){
           System.out.print(nome1 + " Quarto A " + ((idade1 >= 60 ) ? " com desconto de 40%" : "") + nome2 + "Quarta B\n" );
       }else{
           System.out.print(nome2+ " Quarto A "+((idade2 >= 60 ) ? " com desconto de 40%" : "") + nome1 + " Quarta B \n");
       }
       
       
    }
    
}
