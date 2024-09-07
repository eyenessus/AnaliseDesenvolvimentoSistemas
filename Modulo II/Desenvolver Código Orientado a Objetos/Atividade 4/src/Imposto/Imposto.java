package Imposto;

public abstract class Imposto implements IImposto {

    abstract public double calcularImposto();

    abstract public String getDescricao();
}
