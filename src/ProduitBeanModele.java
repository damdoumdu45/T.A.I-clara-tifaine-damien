
public class ProduitBeanModele {
	
	private int id;
	private String code_article;
	private String description;
	private int quantite;
	private String criticite;
	private int regle;
	private String date_dernier_inventaire;
	private int confiance;
	private int id_inventaire;
	private int id_historique;
	
	public ProduitBeanModele() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode_article() {
		return code_article;
	}

	public void setCode_article(String code_article) {
		this.code_article = code_article;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public String getCriticite() {
		return criticite;
	}

	public void setCriticite(String criticite) {
		this.criticite = criticite;
	}

	public int getRegle() {
		return regle;
	}

	public void setRegle(int regle) {
		this.regle = regle;
	}

	public String getDate_dernier_inventaire() {
		return date_dernier_inventaire;
	}

	public void setDate_dernier_inventaire(String date_dernier_inventaire) {
		this.date_dernier_inventaire = date_dernier_inventaire;
	}

	public int getConfiance() {
		return confiance;
	}

	public void setConfiance(int confiance) {
		this.confiance = confiance;
	}

	public int getId_inventaire() {
		return id_inventaire;
	}

	public void setId_inventaire(int id_inventaire) {
		this.id_inventaire = id_inventaire;
	}

	public int getId_historique() {
		return id_historique;
	}

	public void setId_historique(int id_historique) {
		this.id_historique = id_historique;
	}

}
