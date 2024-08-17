/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package hotelsenac;

import java.util.Scanner;

/**
 *
 * @author emers
 */
public class HotelSenac {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int quantidade;
        System.out.print("Seja bem vindo ao Hotel Senac \n");
        System.out.print("Quantos hóspedes serão? \n");
        quantidade = entrada.nextInt();
        
        if(quantidade >350 || quantidade <= 0){
              System.out.print("Número de convidados inválido! \n");
        }
        
        if(quantidade <= 350 && quantidade >= 220){
            System.out.print("use o auditório Beta \n");
        }else if(quantidade <= 220) {
            System.out.print("use o auditório Alfa \n");
            System.out.print("Inclua mais "+ (quantidade - 150 ) + " cadeiras \n");
        }   
    }
    
}
