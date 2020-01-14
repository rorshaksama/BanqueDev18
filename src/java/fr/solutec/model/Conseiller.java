/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

/**
 *
 * @author esic
 */
public class Conseiller {
    private int id;
    private String photo;
    private boolean isActive;
    private User user;

    public Conseiller() {
    }

    
    public Conseiller(int id, String photo, boolean isActive, User user) {
        this.id = id;
        this.photo = photo;
        this.isActive = isActive;
        this.user = user;
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

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Conseiller{" + "id=" + id + ", photo=" + photo + ", isActive=" + isActive + ", user=" + user + '}';
    }
    
    
}

