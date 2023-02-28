

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class inventairesControleur
 */
@WebServlet("/MembreControleur")
public class MembreControleur extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    /**
     * @see HttpServlet#HttpServlet()
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
		MembreDAOModele MembreDAOModele = new MembreDAOModele();
		List<MembreBeanModele> membreListe = MembreDAOModele.lireListe();
		request.setAttribute("membreListe", membreListe);

		request.getRequestDispatcher("/AjoutEmploye.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mail = request.getParameter("mail");
		String mdp = request.getParameter("mdp");
		
		MembreBeanModele membre= new MembreBeanModele();
		membre.setMail(mail);
		membre.setMdp(mdp);
		
		MembreDAOModele MembreDAOModele = new MembreDAOModele();
		MembreDAOModele.creer(membre);

		
		doGet(request, response);
	}

}
