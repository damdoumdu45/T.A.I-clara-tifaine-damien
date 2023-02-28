
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
	public int creer(AjoutBeanModele inventaire)
	{
		ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
		Connection connexion = connexionBDDModele.getConnexion();

		int resultat = -1;
		try
		{

			String requete = new String("INSERT INTO inventaire (description, code_article, date_de_creation, fournisseur, regle) VALUES (?,?,?,?,?);");
			PreparedStatement statement = connexion.prepareStatement(requete,
					Statement.RETURN_GENERATED_KEYS);

			statement.setString(1, inventaire.getDescription());
			statement.setString(2, inventaire.getCode_article());
			statement.setString(3, inventaire.getDate_de_creation());
			statement.setString(4, inventaire.getFournisseur());
			statement.setString(5, inventaire.getRegle());

			statement.executeUpdate();
			ResultSet rs = statement.getGeneratedKeys();
			if (rs.next()) {
				resultat = rs.getInt(1);
				inventaire.setId(resultat);
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

		List<AjoutBeanModele> inventaireListe = new ArrayList<AjoutBeanModele>();		

		try
		{
			String requete = new String("SELECT id, description, code_article, date_de_creation, fournisseur, regle FROM inventaire;");
			Statement statement = connexion.createStatement();
			ResultSet rs = statement.executeQuery(requete);

			while ( rs.next() )
			{
				AjoutBeanModele inventaire = new AjoutBeanModele();
				inventaire.setId(rs.getInt("id"));
				inventaire.setDescription(rs.getString("description"));
				inventaire.setCode_article(rs.getString("code_article"));
				inventaire.setDate_de_creation(rs.getString("date_de_creation"));
				inventaire.setFournisseur(rs.getString("fournisseur"));
				inventaire.setDescription(rs.getString("regle"));
				

				inventaireListe.add(inventaire);
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
		return inventaireListe;
	}
	public AjoutBeanModele lire(int id)
    {
        ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
        Connection connexion = connexionBDDModele.getConnexion();
        AjoutBeanModele inventaire = new AjoutBeanModele();
        try
        {
            String requete = new String("SELECT id, description, code_article, date_de_creation, fournisseur, regle FROM inventaire WHERE id=?;");
            PreparedStatement statement = connexion.prepareStatement(requete, Statement.RETURN_GENERATED_KEYS);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while ( rs.next() )
            {
            	inventaire.setId(rs.getInt("id"));
				inventaire.setDescription(rs.getString("description"));
				inventaire.setCode_article(rs.getString("code_article"));
				inventaire.setDate_de_creation(rs.getString("date_de_creation"));
				inventaire.setFournisseur(rs.getString("fournisseur"));
				inventaire.setDescription(rs.getString("regle"));
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
        return inventaire;
    }
}