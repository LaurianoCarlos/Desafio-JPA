package com.lauriano.desafio_jpa.entities;

import jakarta.persistence.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.Objects;

@Entity(name = "tb_bloco")
public class Bloco {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss")
    private Date inicio;
    @DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss")
    private Date fim;

    @ManyToOne
    @JoinColumn(name = "atividade_id")
    private Atividade atividade;

    public Bloco() {

    }

    public Bloco(Integer id, Date inicio, Date fim, Atividade atividade) {
        this.id = id;
        this.inicio = inicio;
        this.fim = fim;
        this.atividade = atividade;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getInicio() {
        return inicio;
    }

    public void setInicio(Date inicio) {
        this.inicio = inicio;
    }

    public Date getFim() {
        return fim;
    }

    public void setFim(Date fim) {
        this.fim = fim;
    }

    public Atividade getAtividade() {
        return atividade;
    }

    public void setAtividade(Atividade atividade) {
        this.atividade = atividade;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Bloco bloco = (Bloco) o;
        return Objects.equals(id, bloco.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "Bloco{" +
                "id=" + id +
                ", inicio=" + inicio +
                ", fim=" + fim +
                ", atividade=" + atividade +
                '}';
    }
}
