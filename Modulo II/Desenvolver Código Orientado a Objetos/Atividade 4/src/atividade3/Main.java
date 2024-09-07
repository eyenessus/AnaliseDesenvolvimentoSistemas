package atividade3;
import java.util.Scanner;

import Imposto.IPI;
import Imposto.PIS;
import Pagamento.Pagamento;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Informe o nome da empresa:");
        String nomeEmpresa = scanner.nextLine();
        Pagamento pagamento = new Pagamento(nomeEmpresa);

        while (true) {
            System.out.println("Digite o tipo de imposto (PIS, IPI) ou 'pare' para encerrar:");
            String tipoImposto = scanner.nextLine();

            if (tipoImposto.equalsIgnoreCase("pare")) {
                break;
            }

            switch (tipoImposto.toUpperCase()) {
                case "PIS":
                    System.out.println("Informe o total:");
                    double total = scanner.nextDouble();
                    System.out.println("Informe o débito:");
                    double debito = scanner.nextDouble();
                    scanner.nextLine();  
                    pagamento.adicionarImposto(new PIS(total, debito));
                    break;

                case "IPI":
                    System.out.println("Informe o valor do produto:");
                    double totalProduto = scanner.nextDouble();
                    System.out.println("Informe o frete:");
                    double frete = scanner.nextDouble();
                    System.out.println("Informe o seguro:");
                    double seguro = scanner.nextDouble();
                    System.out.println("Informe outras despesas:");
                    double outrasDespesas = scanner.nextDouble();
                    System.out.println("Informe a alíquota:");
                    double aliquota = scanner.nextDouble();
                    scanner.nextLine(); 
                    pagamento.adicionarImposto(new IPI(totalProduto, frete, seguro, outrasDespesas, aliquota));
                    break;

                default:
                    System.out.println("Imposto não reconhecido.");
            }
        }

        System.out.println("Impostos cadastrados:");
        pagamento.mostrarImpostos();
    }
}
