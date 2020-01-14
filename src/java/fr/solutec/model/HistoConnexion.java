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
public class HistoConnexion {
    private int id;
    private Date dateCo;
    private User user;

    public HistoConnexion() {
    }

    public HistoConnexion(int id, Date dateCo, User user) {
        this.id = id;
        this.dateCo = dateCo;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDateCo() {
        return dateCo;
    }

    public void setDateCo(Date dateCo) {
        this.dateCo = dateCo;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "HistoConnexion{" + "id=" + id + ", dateCo=" + dateCo + ", user=" + user + '}';
    }
    
    
}
