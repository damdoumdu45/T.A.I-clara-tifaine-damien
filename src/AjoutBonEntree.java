

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
@WebServlet("/AjoutBonEntree")
public class AjoutBonEntree extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjoutBonEntree() {
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

		request.getRequestDispatcher("/AjouterBonEntree.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String code_article = request.getParameter("code_article");
		String quantite = request.getParameter("quantite");
		String id_criticite=request.getParameter("id_criticite");
		
		AjoutBeanModele produit= new AjoutBeanModele();
		AjoutDAOModele ajoutDAOModele = new AjoutDAOModele();
	
		produit.setCode_article(code_article);
		produit.setQuantite(Integer.parseInt(quantite));
		
		quantite+= ajoutDAOModele.lireQuantite(Integer.parseInt(code_article));
		System.out.println(quantite);
		ajoutDAOModele.modifierQuantite(Integer.parseInt(quantite), Integer.parseInt(id_criticite), Integer.parseInt(code_article));

		
		request.getRequestDispatcher("/Accueil.jsp").forward(request, response);
		
	}

}
