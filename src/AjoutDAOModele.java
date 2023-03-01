import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


//DAO pour CRUD (create, read, update, delete)
public class AjoutDAOModele {

	// CRUD: create(obj)
	public int creer(AjoutBeanModele produit)
	{
		ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
		Connection connexion = connexionBDDModele.getConnexion();

		int resultat = -1;
		try
		{		
			String requete = new String("INSERT INTO produit (description, code_article, date_de_creation, fournisseur, regle, quantite, id_criticite) VALUES (?,?,?,?,?,?,?);");
			PreparedStatement statement = connexion.prepareStatement(requete,
					Statement.RETURN_GENERATED_KEYS);

			statement.setString(1, produit.getDescription());
			statement.setString(2, produit.getCode_article());
			statement.setString(3, produit.getDate_de_creation());
			statement.setString(4, produit.getFournisseur());
			statement.setInt(5, produit.getRegle());
			statement.setInt(6, produit.getQuantite());
			statement.setInt(7, produit.getCriticite().getId());

			statement.executeUpdate();
			ResultSet rs = statement.getGeneratedKeys();
			if (rs.next()) {
				resultat = rs.getInt(1);
				produit.setId(resultat);
			}
			else 
				resultat = -1;

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
		return resultat;
	}

	// read all
	public List<AjoutBeanModele> lireListe()
	{
		ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
		Connection connexion = connexionBDDModele.getConnexion();

		List<AjoutBeanModele> produitListe = new ArrayList<AjoutBeanModele>();		

		try
		{
			String requete = new String("SELECT id, description, code_article, quantite, date_de_creation, fournisseur, regle, id_criticite  FROM produit;");
			Statement statement = connexion.createStatement();
			ResultSet rs = statement.executeQuery(requete);
			CriticiteDAOModele criticiteDAOModele = new CriticiteDAOModele();

			while ( rs.next() )
			{
				AjoutBeanModele produit = new AjoutBeanModele();
				produit.setId(rs.getInt("id"));
				produit.setDescription(rs.getString("description"));
				produit.setCode_article(rs.getString("code_article"));
				produit.setDate_de_creation(rs.getString("date_de_creation"));
				produit.setFournisseur(rs.getString("fournisseur"));
				produit.setRegle(rs.getInt("regle"));
				produit.setQuantite(rs.getInt("quantite"));
				produit.setCriticite(criticiteDAOModele.lire(rs.getInt("id_criticite")));
				

				produitListe.add(produit);
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
		return produitListe;
	}
	public AjoutBeanModele lire(int id)
    {
        ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
        Connection connexion = connexionBDDModele.getConnexion();
        AjoutBeanModele produit = new AjoutBeanModele();
        try
        {
            String requete = new String("SELECT id, description, code_article, date_de_creation, fournisseur, quantite, regle, id_criticite FROM produit WHERE id=?;");
            PreparedStatement statement = connexion.prepareStatement(requete, Statement.RETURN_GENERATED_KEYS);
            /*statement.setInt(1, id);*/
            ResultSet rs = statement.executeQuery();
            CriticiteDAOModele criticiteDAOModele = new CriticiteDAOModele();
            
            while ( rs.next() )
            {
            	produit.setId(rs.getInt("id"));
				produit.setDescription(rs.getString("description"));
				produit.setCode_article(rs.getString("code_article"));
				produit.setDate_de_creation(rs.getString("date_de_creation"));
				produit.setFournisseur(rs.getString("fournisseur"));
				produit.setRegle(rs.getInt("regle"));
				produit.setRegle(rs.getInt("quantite"));
				produit.setCriticite(criticiteDAOModele.lire(rs.getInt("id_criticite")));
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
        return produit;
    }
}