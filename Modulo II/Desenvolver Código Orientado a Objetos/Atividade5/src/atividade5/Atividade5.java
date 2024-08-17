/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package atividade5;

import java.util.Scanner;

/**
 *
 * @author emers
 */
public class Atividade5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int hotel[][] = new int[4][3];
        char choose;
        int quarto, andar;

        System.out.print("Informe Andar e Quarto\n");
            

        do {
            System.out.print("Informe qual andar gostaria? 1 a 4 \n");
            andar = entrada.nextInt();
            entrada.nextLine();
            
            System.out.print("Informe qual número do quarto gostaria? 1 a 3 \n");
            quarto = entrada.nextInt();
            entrada.nextLine();

            hotel[andar -1 ][quarto -1] = 1;
            
            
            System.out.print("Deseja informar outra ocupação? (S/N)\n");
            choose = entrada.next().charAt(0);
            

        } while (choose == 'S');

        System.out.print("Ocupação do hotel:\n");
        
        for(int i = 0; i< hotel.length; i++){
             System.out.print(i+1+" Andar:\n");
             
             for(int j =0; j < hotel[i].length;j++){
                 System.out.print("Quarto "+ (j+1)     + (hotel[i][j] == 1 ? " Ocupado" : " Desocupado ") + "\n");
                 
             }
        }
    }

}
