/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Venda;

import Pacote.Pacote;

/**
 *
 * @author emers
 */
public class Venda {
    private String nomeCliente;
    private String formaPagamento;
    private Pacote pacote;

    public Venda(String nomeCliente, String formaPagamento, Pacote pacote) {
        this.nomeCliente = nomeCliente;
        this.formaPagamento = formaPagamento;
        this.pacote = pacote;

    }

    private float obterCotacao(float dolar, float cotacao) {
        return dolar * cotacao;
    }

    public float obterTotalDolar(float margemLucro,float taxaAdicional,float cotacao) {
        return this.obterCotacao(pacote.totalPacote(taxaAdicional, margemLucro),cotacao);
    }

    
}
