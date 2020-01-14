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
    private Client client;

    public Compte() {
    }

    public Compte(int id, int solde, int decouvert, boolean isActive, Client client) {
        this.id = id;
        this.solde = solde;
        this.decouvert = decouvert;
        this.isActive = isActive;
        this.client = client;
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

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    @Override
    public String toString() {
        return "Compte{" + "id=" + id + ", solde=" + solde + ", decouvert=" + decouvert + ", isActive=" + isActive + ", client=" + client + '}';
    }
    

    
    
    
}
