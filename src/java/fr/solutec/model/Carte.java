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
public class Carte {
    private int id;
    private boolean isActive;
    private Compte compte;

    public Carte() {
    }

    public Carte(int id, boolean isActive, Compte compte) {
        this.id = id;
        this.isActive = isActive;
        this.compte = compte;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public Compte getCompte() {
        return compte;
    }

    public void setCompte(Compte compte) {
        this.compte = compte;
    }

    @Override
    public String toString() {
        return "Carte{" + "id=" + id + ", isActive=" + isActive + ", compte=" + compte + '}';
    }
    
    
}
