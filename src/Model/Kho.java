package Model;

public class Kho {
	private String makho;
	private String tenkho;
	private String diachi;
	private String ngaythue;
	private String phithue;

	public Kho(String makho, String tenkho, String diachi, String ngaythue, String phithue) {
		super();
		this.makho = makho;
		this.tenkho = tenkho;
		this.diachi = diachi;
		this.ngaythue = ngaythue;
		this.phithue = phithue;

	}
	public Kho() {
		// TODO Auto-generated constructor stub
	}
	public String getMakho() {
		return makho;
	}
	public void setMakho(String makho) {
		this.makho = makho;
	}
	public String getTenkho() {
		return tenkho;
	}
	
	public void setTenkho(String tenkho) {
		this.tenkho = tenkho;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getNgaythue() {
		return ngaythue;
	}
	public void setNgaythue(String ngaythue) {
		this.ngaythue = ngaythue;
	}
	public String getPhithue() {
		return phithue;
	}
	public void setPhithue(String phithue) {
		this.phithue = phithue;
	}
	
}
