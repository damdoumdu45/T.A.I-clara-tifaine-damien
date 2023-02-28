import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class ConnexionDAOModele {
	
	public boolean lirePoste(String mail, String mdp)
    {
        ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
        Connection connexion = connexionBDDModele.getConnexion();
        boolean Result = false;
        try        {
            String requete = new String("SELECT mail, mdp FROM utilisateur WHERE mail = ? AND mdp = ?;");
            PreparedStatement statement = connexion.prepareStatement(requete);
            statement.setString(1, mail);
            statement.setString(2, mdp);
            ResultSet rs = statement.executeQuery();
            if ( rs.next() )
            {
                Result=true;
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
        return Result;
    }
}
