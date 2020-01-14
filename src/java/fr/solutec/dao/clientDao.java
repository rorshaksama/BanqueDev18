/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Client;
import fr.solutec.model.Compte;
import fr.solutec.model.Conseiller;
import fr.solutec.model.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author esic
 */
public class clientDao {

    public static Compte infoClient(User user) throws SQLException {
        Compte co = null;
        String sql = "SELECT * FROM user u INNER JOIN client cl WHERE u.idUser=cl.idUser INNER JOIN compte c WHERE cl.idClient=c.idClient WHERE ";
        Connection connexion = AccessBD.getConnection();

        Statement requete = connexion.createStatement();

        ResultSet rs = requete.executeQuery(sql);
        while (rs.next()) {
            co = new Compte();
            Client cl = new Client();
            User u = new User();
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setMail(rs.getString("mail"));
            cl.setUser(u);
            co.setClient(cl);
            
        }
        return co;
    }
}
