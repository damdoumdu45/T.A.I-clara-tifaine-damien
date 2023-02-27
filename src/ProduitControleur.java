

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProduitControleur
 */
@WebServlet("/ProduitControleur")
public class ProduitControleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProduitControleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
ProduitDAOModele produitDAOModele = new ProduitDAOModele();
		
		List<ProduitBeanModele> listeProduit = produitDAOModele.lireListe();
		request.setAttribute("listeProduit", listeProduit);
		
		
	
		request.getRequestDispatcher("/AjouterBonEntree.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String code_article = request.getParameter("code_article");
		String description = request.getParameter("description");
		int quantite = request.getParameter("quantite");
		String criticite = request.getParameter("criticite");
		int regle = request.getParameter("regle");
		String date_dernier_inventaire = request.getParameter("date_dernier_inventaire");
		int confiance = request.getParameter("confiance");
		
		
		ProduitBeanModele produit = new ProduitBeanModele();
		
		ProduitDAOModele produitDAOModele = new ProduitDAOModele();
		produit.setCode_article(code_article);
		
		ProduitDAOModele.creer(produit);
	
		
		
	}

}
