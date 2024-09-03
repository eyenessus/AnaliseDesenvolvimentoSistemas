/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Pacote;

import Hospedagem.Hospedagem;
import Transporte.Transporte;

/**
 *
 * @author emers
 */
public class Pacote {
    private String destino;
    private int qntDias;
    private Hospedagem hospedagem;
    private Transporte transporte;

    public Pacote(String destino,Hospedagem hospedagem, int qntDias, Transporte transporte) {
        this.hospedagem = hospedagem;
        this.transporte = transporte;
        this.destino = destino;
        this.qntDias = qntDias;
        this.destino = destino;
    }

    public float totalHospedagem() {
        return hospedagem.valor * qntDias;
    }

    public float totalPacote(float margemLucro, float taxaAdicional) {
        float valorBase = transporte.valor + this.totalHospedagem();
        return valorBase + this.obterLucro(margemLucro, valorBase) + taxaAdicional ; 
    }

    public float obterLucro(float porcentagem, float valorBase) {
        return valorBase * ( porcentagem / 100);
    }
}
