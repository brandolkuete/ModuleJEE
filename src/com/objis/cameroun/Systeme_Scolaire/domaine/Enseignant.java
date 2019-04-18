package com.objis.cameroun.Systeme_Scolaire.domaine;

/**
 * @author Brandol
 *cette classe contient les informations d'un enseignant
 *Elle contient egalement les constructeurs, les getters/setters aux attributs d'un Enseignant
 */
public class Enseignant extends Personne {
	
	//ceci sont les attributs de la classe Enseignant
	
	private String situationMat;
	private String specialite;
	private String grade;
	private String email;
	private String telephone;
	private double salaire;
	
	
	// Voici le constructeur d'un Enseignant
	
	public Enseignant(String situationMat, String specialite, String grade, String email, String telephone,double salaire) {
		super();
		this.situationMat = situationMat; //situation matrimoniale
		this.specialite = specialite;
		this.grade = grade;
		this.email = email;
		this.telephone = telephone;
		this.salaire=salaire;
	}
	
	// Ce constructeur ne prend rien en parametre
	public Enseignant() {
		super();
	}
	
	// voici les getteurs et les setters des propriétés d'un Enseignant

	public String getSituationMat() {
		return situationMat;
	}
	public void setSituationMat(String situationMat) {
		this.situationMat = situationMat;
	}
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public double getSalaire() {
		return salaire;
	}
	public void setSalaire(double salaire) {
		this.salaire=salaire;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 * ceci est la methode qui permet de connaitre l'etat des variables en mémoire
	 */

	@Override
	public String toString() {
		return "Enseignant [situationMat=" + situationMat + ", specialite=" + specialite + ", grade=" + grade
				+ ", email=" + email + ", telephone=" + telephone + ", salaire=" + salaire + ", matricule=" + matricule
				+ ", nom=" + nom + ", prenom=" + prenom + ", sexe=" + sexe + ", date_nais=" + date_nais
				+ ", nationalite=" + nationalite + ", addresse=" + addresse + ", age=" + age + "]";
	}
	
	
}
