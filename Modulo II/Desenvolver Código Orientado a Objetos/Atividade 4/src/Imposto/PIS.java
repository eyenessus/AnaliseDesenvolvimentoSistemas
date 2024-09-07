package Imposto;

public class PIS extends Imposto {
    private double total;
    private double debito;

    public PIS(double total, double debito) {
        this.total = total;
        this.debito = debito;
    }
    
    @Override
    public double calcularImposto() {
        return (total - debito) * (1.65 / 100);
    }

    @Override
    public String getDescricao() {
        return "Programa de Integração Social (PIS)";
    }

}
