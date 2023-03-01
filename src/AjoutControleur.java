

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class produitsControleur
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
		AjoutDAOModele ajoutDAOModele = new AjoutDAOModele();
		CriticiteDAOModele criticiteDAOModele = new CriticiteDAOModele();
		
		List<AjoutBeanModele> produitListe = ajoutDAOModele.lireListe();
		request.setAttribute("produitListe", produitListe);
		
		List<CriticiteBeanModele> criticiteListe = criticiteDAOModele.lireListe();
		request.setAttribute("criticiteListe", criticiteListe);

		request.getRequestDispatcher("/Inventaire.jsp").forward(request, response);
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
		String criticite = request.getParameter("criticite");
		
		AjoutBeanModele produit= new AjoutBeanModele();
		AjoutDAOModele AjoutDAOModele = new AjoutDAOModele();
		CriticiteDAOModele criticiteDAOModele=new CriticiteDAOModele();
		
		produit.setDescription(description);
		produit.setFournisseur(fournisseur);
		produit.setCode_article(code_article);
		produit.setDate_de_creation(date_de_creation);
		produit.setRegle(Integer.parseInt(regle));
		produit.setCriticite(criticiteDAOModele.lire(Integer.parseInt(criticite)));
		
		
		AjoutDAOModele.creer(produit);

		
		doGet(request, response);
	}

}
