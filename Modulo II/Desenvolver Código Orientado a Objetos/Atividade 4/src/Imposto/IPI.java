package Imposto;

public class IPI extends Imposto {
    private double totalProduto;
    private double frete;
    private double seguro;
    private double outrasDespesas;
    private double aliquota;

    public IPI(double totalProduto, double frete, double seguro, double outrasDespesas, double aliquota) {
        this.totalProduto = totalProduto;
        this.frete = frete;
        this.seguro = seguro;
        this.outrasDespesas = outrasDespesas;
        this.aliquota = aliquota;
    }

    @Override
    public double calcularImposto() {
        return (totalProduto + frete + seguro + outrasDespesas) * (aliquota / 100);
    }

    @Override
    public String getDescricao() {
        return "Imposto sobre Produtos Industrializados (IPI)";
    }
    
}
