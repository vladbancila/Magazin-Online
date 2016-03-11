package model.domain;

public class Articol {

	private int id;
	private String denumire;
	private String calePoza;
	private double pret;

	@Override
	public String toString() {
		return "Articol [id=" + id + ", denumire=" + denumire + ", calePoza=" + calePoza + ", pret=" + pret + "]";
	}

	public Articol(int id, String denumire, String calePoza, double pret) {
		super();
		this.id = id;
		this.denumire = denumire;
		this.calePoza = calePoza;
		this.pret = pret;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDenumire() {
		return denumire;
	}

	public void setDenumire(String denumire) {
		this.denumire = denumire;
	}

	public String getCalePoza() {
		return calePoza;
	}

	public void setCalePoza(String calePoza) {
		this.calePoza = calePoza;
	}

	public double getPret() {
		return pret;
	}

	public void setPret(double pret) {
		this.pret = pret;
	}

}
