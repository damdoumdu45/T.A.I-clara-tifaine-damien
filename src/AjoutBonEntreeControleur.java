

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AjoutBonEntreeControleur
 */
@WebServlet("/AjoutBonEntreeControleur")
public class AjoutBonEntreeControleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjoutBonEntreeControleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		InventaireDAOModele inventaireDAOModele = new InventaireDAOModele();
		String nom = request.getParameter("nom");
		String prix = request.getParameter("prix");
		
		ProduitBeanModele produit = new ProduitBeanModele();
		produit.setNom(nom);
		produit.setPrix(Integer.parseInt(prix));
		
		int id  = produitDAOModele.creer(produit);
		produit.setId(id);
		
		request.setAttribute("produit", produit);
		request.getRequestDispatcher("/produitAjoutVue.jsp").forward(request, response);
		doGet(request, response);
	}

}
