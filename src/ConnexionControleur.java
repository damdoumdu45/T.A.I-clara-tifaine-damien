

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConnexionControleur
 */
@WebServlet("/ConnexionControleur")
public class ConnexionControleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConnexionControleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mail = request.getParameter("mail");
        String mdp = request.getParameter("mdp");
        ConnexionDAOModele connexionDAOModele = new ConnexionDAOModele();
        boolean Result = connexionDAOModele.lirePoste(mail, mdp);
        if (Result == true) {
            request.getRequestDispatcher("/Accueil.jsp").forward(request, response);
        }
        else {
        	request.setAttribute("Erreur", "Erreur de Connexion");
        	request.getRequestDispatcher("/pageConnexion.jsp").forward(request, response);
        }
    }

}
