package atividade3.funcionario;

public abstract class Empregado {
    protected String nome;
    protected String cpf;
    protected String endereco;
    protected String telefone;

    protected Empregado(String nome, String cpf, String endereco, String telefone) {
        this.nome = nome;
        this.cpf = cpf;
        this.endereco = endereco;
        this.telefone = telefone;
    }

    abstract protected void salario(int Total);

    abstract protected void salario(int horas, int valor);

    abstract protected float calcularSalario();

    abstract protected float aumento(float percentual);
}
