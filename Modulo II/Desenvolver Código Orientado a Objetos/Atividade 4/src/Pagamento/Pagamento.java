package Pagamento;

import Imposto.IImposto;
import java.util.ArrayList;
import java.util.List;

public class Pagamento {
    String nomeEmpresa;
    List<IImposto>  impostos = new ArrayList<IImposto>();

    public Pagamento(String nomeEmpresa) {
        this.nomeEmpresa = nomeEmpresa;
    }

    public void adicionarImposto(IImposto imposto) {
        impostos.add(imposto);
    }

    public void mostrarImpostos() {
        for (IImposto imposto : impostos) {
            System.out.println(imposto.getDescricao() + ": R$ " + imposto.calcularImposto());
        }
    }
}
