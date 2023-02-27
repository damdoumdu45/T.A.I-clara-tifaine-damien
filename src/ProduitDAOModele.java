import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ProduitDAOModele {
	
	// read all    
		public ArrayList<ProduitBeanModele> lireListe()
	    {
	        ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
	        Connection connexion = connexionBDDModele.getConnexion();
	        ArrayList<ProduitBeanModele> listeProduit = new ArrayList<ProduitBeanModele>();
	        try        
	        {
	            String requete = new String("SELECT id, code_article, description, quantite, criticite, regle, date_dernier_inventaire, confiance, id_inventaire;");
	            Statement statement = connexion.createStatement();
	            ResultSet rs = statement.executeQuery(requete);
	            while ( rs.next() )
	            {
	                ProduitBeanModele produit = new ProduitBeanModele();
	                produit.setId(rs.getInt("id"));
	                produit.setCode_article(rs.getString("code_article"));
	                produit.setDescription(rs.getString("description"));
	                produit.setQuantite(rs.getInt("quantite"));
	                produit.setCriticite(rs.getString("criticite"));
	                produit.setRegle(rs.getInt("regle"));
	                produit.setDate_dernier_inventaire(rs.getString("date_dernier_inventaire"));
	                produit.setConfiance(rs.getInt("confiance"));
	                produit.setId_inventaire(rs.getInt("id_inventaire"));
	                produit.setId_historique(rs.getInt("id_historique"));
	                listeProduit.add(produit);
	            }
	        }
	        catch (SQLException ex3)
	        {
	            while (ex3 != null)
	            {
	                System.out.println(ex3.getSQLState());
	                System.out.println(ex3.getMessage());
	                System.out.println(ex3.getErrorCode());
	                ex3=ex3.getNextException();
	            }
	        }
	        finally        {
	            connexionBDDModele.fermerConnexion();
	        }
	        return listeProduit;
	    
	    }
	    // CRUD: create(obj)    
	    public void creer(ProduitBeanModele produit)
	    {
	        ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
	        Connection connexion = connexionBDDModele.getConnexion();
	        try        
	        {
	            String requete = new String("INSERT INTO produit (code_article, description, quantite, criticite, regle, date_dernier_nventaire, confiance) VALUES (?, ?, ?, ?, ?, ?, ?;");
	            PreparedStatement statement = connexion.prepareStatement(requete);
	            statement.setString(1, produit.getCode_article());
	            statement.setString(2, produit.getDescription());
	            statement.setInt(3, produit.getQuantite());
	            statement.setString(4, produit.getCriticite());
	            statement.setInt(5, produit.getRegle());
	            statement.setString(6, produit.getDate_dernier_inventaire());
	            statement.setInt(7, produit.getConfiance());	            
	            statement.executeUpdate();
	        }
	        catch (SQLException ex3)
	        {
	            while (ex3 != null)
	            {
	                System.out.println(ex3.getSQLState());
	                System.out.println(ex3.getMessage());
	                System.out.println(ex3.getErrorCode());
	                ex3=ex3.getNextException();
	            }
	        }
	        finally        
	        {
	            connexionBDDModele.fermerConnexion();
	        }
	    }
	  
	  
	    }
	    // CRUD: update(obj)    
	    // CRUD: delete(obj)}