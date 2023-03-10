public class AjoutBeanModele {
	
	private int id;
	private String code_article;
	private String description;
	private String date_de_creation;
	private String fournisseur;
	private int regle;
	private int quantite;
	
	
	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	private CriticiteBeanModele criticite;
	

	public CriticiteBeanModele getCriticite() {
		return criticite;
	}

	public void setCriticite(CriticiteBeanModele criticite) {
		this.criticite = criticite;
	}


	public AjoutBeanModele() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCode_article() {
		return code_article;
	}

	public void setCode_article(String code_article) {
		this.code_article = code_article;
	}

	public String getDate_de_creation() {
		return date_de_creation;
	}

	public void setDate_de_creation(String date_de_creation) {
		this.date_de_creation = date_de_creation;
	}

	public String getFournisseur() {
		return fournisseur;
	}

	public void setFournisseur(String fournisseur) {
		this.fournisseur = fournisseur;
	}

	public int getRegle() {
		return regle;
	}

	public void setRegle(int regle) {
		this.regle = regle;
	}


}
