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
public class Compte {
    private int id;
    private int solde;
    private int decouvert;
    private boolean isActive;
    private User user;

    public Compte() {
    }

    public Compte(int id, int solde, int decouvert, boolean isActive, User user) {
        this.id = id;
        this.solde = solde;
        this.decouvert = decouvert;
        this.isActive = isActive;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSolde() {
        return solde;
    }

    public void setSolde(int solde) {
        this.solde = solde;
    }

    public int getDecouvert() {
        return decouvert;
    }

    public void setDecouvert(int decouvert) {
        this.decouvert = decouvert;
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
        return "Compte{" + "id=" + id + ", solde=" + solde + ", decouvert=" + decouvert + ", isActive=" + isActive + ", user=" + user + '}';
    }
    
    
}
