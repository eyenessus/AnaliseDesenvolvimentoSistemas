package Imposto;

public interface IImposto {
   
    /**
     * Calcula o imposto.
     */
    public double calcularImposto();

    /**
     * Retorna a descrição do imposto.
     */
    public String getDescricao();

}
