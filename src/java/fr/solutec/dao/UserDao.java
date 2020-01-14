
package fr.solutec.dao;

import fr.solutec.model.User;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class UserDao {
    public static User getByLoginAndPass(String log, String mdp) throws SQLException{
        User u = null;
        String sql = "SELECT * FROM user WHERE login=? AND mdp=?";
        Connection connexion = AccessBD.getConnection();
        PreparedStatement requete = connexion.prepareStatement(sql);
        requete.setString(1, log);
        requete.setString(2, mdp);
        ResultSet rs = requete.executeQuery();
        if(rs.next()){
            u = new User();
            u.setId(rs.getInt("idUser"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setLogin(rs.getString("login"));
        }
        return u;
    }
    
    public static boolean isClient (int idUser) throws SQLException{
        boolean res = false;
        String sql = "SELECT idUser FROM client WHERE idUser=?";
        Connection connexion = AccessBD.getConnection();
        PreparedStatement requete = connexion.prepareStatement(sql);
        requete.setInt(1, idUser);
        ResultSet rs = requete.executeQuery();
        if(rs.next()){
            res=true;
        }
        return res;
    }
    
    public static boolean isAdmin (int idUser) throws SQLException{
        boolean res = false;
        String sql = "SELECT idUser FROM admin WHERE idUser=?";
        Connection connexion = AccessBD.getConnection();
        PreparedStatement requete = connexion.prepareStatement(sql);
        requete.setInt(1, idUser);
        ResultSet rs = requete.executeQuery();
        if(rs.next()){
            res=true;
        }
        return res;
    }
    public static boolean isCons (int idUser) throws SQLException{
        boolean res = false;
        String sql = "SELECT idUser FROM conseiller WHERE idUser=?";
        Connection connexion = AccessBD.getConnection();
        PreparedStatement requete = connexion.prepareStatement(sql);
        requete.setInt(1, idUser);
        ResultSet rs = requete.executeQuery();
        if(rs.next()){
            res=true;
        }
        return res;
    }
    
    public static void inscription(User personne) throws SQLException{
        String sql = "INSERT INTO user (nom, prenom, login, mdp) VALUES (?, ?, ?, ?)";
        Connection connexion = AccessBD.getConnection();
        PreparedStatement requete = connexion.prepareStatement(sql);
        requete.setString(1, personne.getNom());
        requete.setString(2, personne.getPrenom());
        requete.setString(3, personne.getLogin());
        requete.setString(4, personne.getMdp());
        requete.execute();
        
    
        
    }
    
    public static List<User> getAllPerson() throws SQLException{
        List<User> users = new ArrayList<User>();
        String sql = "SELECT * FROM user";
        Connection connexion = AccessBD.getConnection();
        Statement requete = connexion.createStatement();
        ResultSet rs = requete.executeQuery(sql);
        while(rs.next()){
            User u = new User();
            u.setId(rs.getInt("idUser"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setLogin(rs.getString("login"));
            
            users.add(u);
        }
        return users;
    }
    
   public static void modif(User personne) throws SQLException{
        String sql = "UPDATE user SET nom=?, prenom=?, login=? WHERE idUser=?";
        Connection connexion = AccessBD.getConnection();
        PreparedStatement requete = connexion.prepareStatement(sql);
        requete.setString(1, personne.getNom());
        requete.setString(2, personne.getPrenom());
        requete.setString(3, personne.getLogin());
        requete.setInt(4, personne.getId());
        requete.executeUpdate
        ();
        
    
        
    }
}