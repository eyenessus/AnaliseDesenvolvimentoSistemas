/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package atividade3;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import atividade3.funcionario.Funcionario;

/**
 *
 * @author emers
 */
public class Atividade3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        List<Funcionario> funcionarios = new ArrayList<>();
        Scanner scanner = new Scanner(System.in);
        char tipo;
        int porcentagem;

        do {
            System.out.println("Qual tipo de funcionário?: [A] Assalariado [H] Horista\n");
            tipo = scanner.next().charAt(0);
            System.out.println("Nome: \n");
            String nome = scanner.next();
            System.out.println("CPF: \n");
            String cpf = scanner.next();
            System.out.println("Endereço: \n");
            String endereco = scanner.next();
            System.out.println("Telefone:\n ");
            String telefone = scanner.next();
            System.out.println("Salário:\n ");
            int salario = scanner.nextInt();
            scanner.nextLine();

            Funcionario funcionario = new Funcionario(nome, cpf, endereco, telefone);

            if (tipo == 'H') {
                System.out.println("Horas:\n ");
                int horas = scanner.nextInt();
                scanner.nextLine();
                funcionario.salario(horas, salario);
                funcionarios.add(funcionario);
            } else {
                funcionario.salario(salario);
                funcionarios.add(funcionario);
            }

        } while (funcionarios.size() <= 10 || tipo != 'A' || tipo != 'H');

        if(funcionarios.size() == 0){
            System.out.println("Nenhum funcionário cadastrado");
            return;
        }
        
        System.out.println("Aplicar aumento em todos funcionario qual seria a porcentagem?: \n");
        porcentagem = scanner.nextInt();

        for (Funcionario funcionario : funcionarios) {
            funcionario.aumento(porcentagem);
            funcionario.mostrarDados();
        }
    }

}
