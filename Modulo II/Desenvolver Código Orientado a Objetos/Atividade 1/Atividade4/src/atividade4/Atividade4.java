/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package atividade4;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author emers
 */
public class Atividade4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int choose =0;
        String hospede;
        List<String> hospedes = new ArrayList<String>();
        Scanner entrada = new Scanner(System.in);
        
        do{
        System.out.print("1- cadastrar; 2- pesquisar; 3- sair.\n");
        choose = entrada.nextInt();
        
        switch(choose){
            case 1:
                System.out.print(hospedes.size());
                if(hospedes.size() == 15){
                    System.out.print("Máximo de cadastros atingido\n");
                }
                entrada.nextLine();
                System.out.print("Informe o nome do hóspede?\n");
                
                hospede = entrada.nextLine();
                hospedes.add(hospede);
                
                System.out.print("Hospede adicionado\n!");
            case 2:
                 System.out.print("Informe o nome:\n");
                 entrada.nextLine();
                 hospede = entrada.nextLine();
                 
                 if(hospedes.indexOf(hospede) >=0){
                     System.out.print("Hóspede "+hospede+" foi encontrado no índice " + hospedes.indexOf(hospede)+"\n");
                 }else{
                     System.out.print("Hóspede não encontrado! \n");
                 }
                 
            case 3:
                entrada.nextLine();
                System.out.print("Saindo...");
                choose = 3;
                break;
            default:
                System.out.print("Opção inválida!\n");
                break;
        } 
            }
        while(choose != 3);
        
    }
    
    
    
}
