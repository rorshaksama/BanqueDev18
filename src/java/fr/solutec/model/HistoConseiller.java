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
public class HistoConseiller {
    private int id;
    private Date dateModif;
    private String type;
    private Conseiller conseiller;

    public HistoConseiller() {
    }

    public HistoConseiller(int id, Date dateModif, String type, Conseiller conseiller) {
        this.id = id;
        this.dateModif = dateModif;
        this.type = type;
        this.conseiller = conseiller;
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

    public Conseiller getConseiller() {
        return conseiller;
    }

    public void setConseiller(Conseiller conseiller) {
        this.conseiller = conseiller;
    }

    @Override
    public String toString() {
        return "HistoConseiller{" + "id=" + id + ", dateModif=" + dateModif + ", type=" + type + ", conseiller=" + conseiller + '}';
    }
    
}
