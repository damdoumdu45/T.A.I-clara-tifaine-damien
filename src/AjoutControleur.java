

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
@WebServlet("/AjoutControleur")
public class AjoutControleur extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjoutControleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AjoutDAOModele AjoutDAOModele = new AjoutDAOModele();
		List<AjoutBeanModele> inventaireListe = AjoutDAOModele.lireListe();
		request.setAttribute("inventaireListe", inventaireListe);

		request.getRequestDispatcher("/AjoutVue.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String description = request.getParameter("description");
		String fournisseur = request.getParameter("fournisseur");
		String code_article = request.getParameter("code_article");
		String date_de_creation = request.getParameter("date_de_creation");
		String regle = request.getParameter("regle");
		
		AjoutBeanModele inventaire= new AjoutBeanModele();
		inventaire.setDescription(description);
		inventaire.setFournisseur(fournisseur);
		inventaire.setCode_article(code_article);
		inventaire.setDate_de_creation(date_de_creation);
		inventaire.setRegle(regle);
		
		AjoutDAOModele AjoutDAOModele = new AjoutDAOModele();
		AjoutDAOModele.creer(inventaire);

		
		doGet(request, response);
	}

}
