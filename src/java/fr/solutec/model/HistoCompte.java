/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

import java.util.Date;

/**
 *
 * @author esic
 */
public class HistoCompte {
    private int id;
    private Date dateModif;
    private String type;
    private Compte compte;

    public HistoCompte() {
    }

    public HistoCompte(int id, Date dateModif, String type, Compte compte) {
        this.id = id;
        this.dateModif = dateModif;
        this.type = type;
        this.compte = compte;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDateModif() {
        return dateModif;
    }

    public void setDateModif(Date dateModif) {
        this.dateModif = dateModif;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Compte getCompte() {
        return compte;
    }

    public void setCompte(Compte compte) {
        this.compte = compte;
    }

    @Override
    public String toString() {
        return "HistoCompte{" + "id=" + id + ", dateModif=" + dateModif + ", type=" + type + ", compte=" + compte + '}';
    }
    
    
}
