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
public class Message {
    private int id;
    private String contenu;
    private Date dateEnvoi;
    private User user;
    private Conseiller conseiller;

    public Message() {
    }

    public Message(int id, String contenu, Date dateEnvoi, User user, Conseiller conseiller) {
        this.id = id;
        this.contenu = contenu;
        this.dateEnvoi = dateEnvoi;
        this.user = user;
        this.conseiller = conseiller;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContenu() {
        return contenu;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public Date getDateEnvoi() {
        return dateEnvoi;
    }

    public void setDateEnvoi(Date dateEnvoi) {
        this.dateEnvoi = dateEnvoi;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Conseiller getConseiller() {
        return conseiller;
    }

    public void setConseiller(Conseiller conseiller) {
        this.conseiller = conseiller;
    }

    @Override
    public String toString() {
        return "Message{" + "id=" + id + ", contenu=" + contenu + ", dateEnvoi=" + dateEnvoi + ", user=" + user + ", conseiller=" + conseiller + '}';
    }
    
    
}
