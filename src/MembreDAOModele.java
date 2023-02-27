import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


// DAO pour CRUD (create, read, update, delete)
public class MembreDAOModele {
	public ArrayList<MembreBeanModele> lireListe()
	{
		ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
		Connection connexion = connexionBDDModele.getConnexion();
		ArrayList<MembreBeanModele> listeMembre = new ArrayList<MembreBeanModele>();
		try
		{
			String requete = new String("SELECT id, nom, prenom, mail, mdp FROM membre;");
			Statement statement = connexion.createStatement();
			ResultSet rs = statement.executeQuery(requete);
			while ( rs.next() )
			{
				MembreBeanModele membre = new MembreBeanModele();
				membre.setId(rs.getInt("id"));
				membre.setNom(rs.getString("nom"));
				membre.setPrenom(rs.getString("prenom"));
				membre.setMail(rs.getString("mail"));
				membre.setMdp(rs.getString("mdp"));
				listeMembre.add(membre);
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
		finally
		{
			connexionBDDModele.fermerConnexion();
		}
		return listeMembre;
	}  
    public MembreBeanModele lire(int id)
    {
        ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
        Connection connexion = connexionBDDModele.getConnexion();
        MembreBeanModele membre = new MembreBeanModele();
        try        
        {
            String requete = new String("SELECT id, nom, mail, mdp FROM membre WHERE id=?;");
            PreparedStatement statement = connexion.prepareStatement(requete,Statement.RETURN_GENERATED_KEYS);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if ( rs.next() )
            {
                membre = new MembreBeanModele();
                membre.setId(id);
                membre.setNom(rs.getString("nom"));
                membre.setPrenom(rs.getString("prenom"));
                membre.setMail(rs.getString("mail"));
                membre.setMdp(rs.getString("mdp"));
                
            }
        }
        catch (SQLException ex3)
        {
            while (ex3 != null)
            {
                System.out.println("here");
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
        return membre;
    }
    public void creer(MembreBeanModele membre)
    {
        ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
        Connection connexion = connexionBDDModele.getConnexion();
        try        
        {
            String requete = new String("INSERT INTO membre (nom, prenom, mail, mdp) VALUES (?, ?, ?, MD5(?);");
            PreparedStatement statement = connexion.prepareStatement(requete);
            statement.setString(1, membre.getNom());
            statement.setString(2, membre.getPrenom());
            statement.setString(3, membre.getMail());
            statement.setString(4, membre.getMdp());
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
    public int verifier(String mail, String mdp)
	{
		ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
		Connection connexion = connexionBDDModele.getConnexion();
		
		int id = -1;
		try
		{
			String requete = new String("SELECT id, nom, prenom, mail, mdp FROM membre WHERE mail=? AND mdp=MD5(?);");
			PreparedStatement statement = connexion.prepareStatement(requete,
					Statement.RETURN_GENERATED_KEYS);
			statement.setString(1, mail);
			statement.setString(2, mdp);
			ResultSet rs = statement.executeQuery();
			if ( rs.next() )
			{
				id = rs.getInt("id");
			}
	
		}
		catch (SQLException ex3)
		{
			while (ex3 != null)
			{
				System.out.println("here");
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
		return id;
	}
		
}
    // CRUD: update(obj)    
    // CRUD: delete(obj)}