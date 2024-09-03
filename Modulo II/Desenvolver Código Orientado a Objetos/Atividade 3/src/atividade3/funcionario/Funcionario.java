/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package atividade3.funcionario;

/**
 *
 * @author emers
 */
public class Funcionario extends Empregado{
    protected String tipo;
    private float salario;
    private float aumento = 0;
    public Funcionario(String nome, String cpf, String endereco, String telefone) {
        super(nome, cpf, endereco, telefone);
    }

    public void salario(int total){
        this.tipo = "Assalariado";
        this.salario = total;
    }
    
    public void salario(int horas, int valor){
        this.tipo = "Horista";
        this.salario = horas * valor;
    }

    @Override
    protected float calcularSalario() {
        return this.salario;
    }

    @Override
    public float aumento(float percentual) {
        return this.salario + (this.salario * percentual / 100) + aumento;
    }

    public void mostrarDados(){
            System.out.println("Nome: " + this.nome + " CPF: "+this.cpf + " Tipo: "+ this.tipo + " Salário: " + this.calcularSalario() + "/n");
    }
}
