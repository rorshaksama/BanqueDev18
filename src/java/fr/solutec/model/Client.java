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
public class Client {
    private int id;
    private String photo;
    private Date dateNaissance;
    private String adresse;
    private User user;
    private Conseiller conseiller;

    public Client() {
    }

    public Client(int id, String photo, Date dateNaissance, String adresse, User user, Conseiller conseiller) {
        this.id = id;
        this.photo = photo;
        this.dateNaissance = dateNaissance;
        this.adresse = adresse;
        this.user = user;
        this.conseiller = conseiller;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Date getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
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
        return "Client{" + "id=" + id + ", photo=" + photo + ", dateNaissance=" + dateNaissance + ", adresse=" + adresse + ", user=" + user + ", conseiller=" + conseiller + '}';
    }
    
    
}
