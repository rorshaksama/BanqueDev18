/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Conseiller;
import fr.solutec.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author esic
 */
public class adminDao {
    
        public static List<Conseiller> getAllConseillers() throws SQLException{
        List<Conseiller> conseillers = new ArrayList<>();
        String sql = "SELECT u.nom,u.prenom, u.mail FROM user u INNER JOIN conseiller c WHERE u.idUser=c.idUser";
        Connection connexion = AccessBD.getConnection();
        
        Statement requete = connexion.createStatement();
        
        ResultSet rs = requete.executeQuery(sql);
        
        while (rs.next()) {
            Conseiller c =new Conseiller();
            User u = new User();
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setMail(rs.getString("mail"));
            c.setUser(u);     
            //c.setIsActive(rs.getBoolean("1"));
            conseillers.add(c);
        }
        
        return conseillers;
    }
        public static void suppressionConseiller(int id) throws SQLException{
        String sql ="DELETE FROM conseiller where idUser = " + id;
        Connection connexion = AccessBD.getConnection();
        Statement requete = connexion.createStatement();
        requete.execute(sql);
        sql ="DELETE FROM user where idUser = " + id;
        requete.execute(sql);
    }
          
    public static void modif(User u) throws SQLException{
    String sql = "UPDATE person SET nom=?, prenom=?,login=?, mdp=?, WHERE idUser=?";
        
        Connection connexion = AccessBD.getConnection();
        PreparedStatement requete = connexion.prepareStatement(sql);
        requete.setString(1,u.getNom());
        requete.setString(2, u.getPrenom());
        requete.setString(3, u.getLogin());
        requete.setInt(4, u.getId());
        requete.setString(5, u.getMdp());
        requete.executeUpdate();
    }

}
