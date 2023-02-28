
public class AjoutBeanModele {
	
	private int id;
	private String code_article;
	private String description;
	private String date_de_creation;
	private String fournisseur;
	private String regle;
	
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

	public String getRegle() {
		return regle;
	}

	public void setRegle(String regle) {
		this.regle = regle;
	}


}

