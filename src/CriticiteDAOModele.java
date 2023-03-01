import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CriticiteDAOModele {
	
	public int creer(CriticiteBeanModele criticite)
	{
		ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
		Connection connexion = connexionBDDModele.getConnexion();

		int resultat = -1;
		try
		{

			String requete = new String("INSERT INTO criticite (criticite) VALUES (?);");
			PreparedStatement statement = connexion.prepareStatement(requete,
					Statement.RETURN_GENERATED_KEYS);

			statement.setString(1, criticite.getCriticite());

			statement.executeUpdate();
			ResultSet rs = statement.getGeneratedKeys();
			if (rs.next()) {
				resultat = rs.getInt(1);
				criticite.setId(resultat);
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
	
	public List<CriticiteBeanModele> lireListe()
	{
		ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
		Connection connexion = connexionBDDModele.getConnexion();

		List<CriticiteBeanModele> CriticiteListe = new ArrayList<CriticiteBeanModele>();		

		try
		{
			String requete = new String("SELECT id, Criticite FROM Criticite;");
			Statement statement = connexion.createStatement();
			ResultSet rs = statement.executeQuery(requete);

			while ( rs.next() )
			{
				CriticiteBeanModele Criticite = new CriticiteBeanModele();
				Criticite.setId(rs.getInt("id"));
				Criticite.setCriticite(rs.getString("Criticite"));

				CriticiteListe.add(Criticite);
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
		return CriticiteListe;
	}
	
	// CRUD: obj = read(id)
		public  CriticiteBeanModele lire(int id)
		{
			ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
			Connection connexion = connexionBDDModele.getConnexion();

			CriticiteBeanModele Criticite = new CriticiteBeanModele();
			try
			{
				String requete = new String("SELECT id, criticite FROM criticite WHERE id = ?;");
				PreparedStatement statement = connexion.prepareStatement(requete);

				statement.setInt(1, id);
				ResultSet rs = statement.executeQuery();

				if ( rs.next() )
				{
					Criticite = new CriticiteBeanModele();
					Criticite.setId(id);
					Criticite.setCriticite(rs.getString("criticite"));
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
			return Criticite;
		}


}
