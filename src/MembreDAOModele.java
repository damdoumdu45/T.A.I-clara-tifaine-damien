import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
// DAO pour CRUD (create, read, update, delete)
public class MembreDAOModele {
    // read all    public ArrayList<EmployeBeanModele> lireListe()
    {
        ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
        Connection connexion = connexionBDDModele.getConnexion();
        ArrayList<MembreBeanModele> listeMembre = new ArrayList<MembreBeanModele>();
        try        {
            String requete = new String("SELECT id, nom, mail, mdp FROM membre;");
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
        finally        {
            connexionBDDModele.fermerConnexion();
        }
        return listeMembre;
    }
    // CRUD: obj = read(id)    public EmployeBeanModele lire(int id)
    {
        ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
        Connection connexion = connexionBDDModele.getConnexion();
        MembreBeanModele employe = new MembreBeanModele();
        try        {
            String requete = new String("SELECT id, nom, login, mdp FROM employe WHERE id=?, datetimecreation;");
            PreparedStatement statement = connexion.prepareStatement(requete,
                    Statement.RETURN_GENERATED_KEYS);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if ( rs.next() )
            {
                employe = new MembreBeanModele();
                employe.setId(id);
                employe.setNom(rs.getString("nom"));
                employe.setPrenom(rs.getString("prenom"));
                employe.setMail(rs.getString("mail"))
                employe.setMdp(rs.getString("mdp"));
                
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
        finally        {
            connexionBDDModele.fermerConnexion();
        }
        return membre;
    }
    // CRUD: create(obj)    public void creer(EmployeBeanModele employe)
    {
        ConnexionBDDModele connexionBDDModele = new ConnexionBDDModele();
        Connection connexion = connexionBDDModele.getConnexion();
        try        {
            String requete = new String("INSERT INTO employe (nom, login, mdp, datetimecreation) VALUES (?, ?, MD5(?), NOW());");
            PreparedStatement statement = connexion.prepareStatement(requete);
            statement.setString(1, employe.getNom());
            statement.setString(2, employe.getMail());
            statement.setString(3, employe.getMdp());
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
        finally        {
            connexionBDDModele.fermerConnexion();
        }
    }
    // CRUD: obj = read(login, mdp)    public int verifier(String login, String mdp)
    {
        // fonction à remplir : vérifier l'existance de l'utilisateur/mdp, retourner soit son id, soit -1.        return -1;
    }
    // CRUD: update(obj)    // CRUD: delete(obj)}