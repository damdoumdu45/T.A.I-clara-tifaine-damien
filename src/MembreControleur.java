import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MembreControleur
 */
@WebServlet("/MembreControleur")
public class MembreControleur extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public MembreControleur() {
    	super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MembreDAOModele membreDAOModele = new MembreDAOModele();
		
		List<MembreBeanModele> membreListe = membreDAOModele.lireListe();
		request.setAttribute("membreListe", membreListe);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String mail = request.getParameter("mail");
		String mdp = request.getParameter("mdp");
		
		MembreBeanModele membre = new MembreBeanModele();
		MembreDAOModele membreDAOModele = new MembreDAOModele();
		
		membre.setNom(nom);
		membre.setPrenom(prenom);
		membre.setMail(mail);
		membre.setMdp(mdp);
		
		membreDAOModele.creer(membre);
		
		
		doGet(request, response);
	}

}
