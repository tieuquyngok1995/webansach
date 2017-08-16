package Model;

public class ChiTietSanPham {
	private String idCTSP;
	private String idSP;
	private String tenChiTiet;
	private double giamGia;
	private String moTa;
	public ChiTietSanPham(){
		
	}
	public ChiTietSanPham(String idCTSP, String idSP, String tenChiTiet, double giamGia, String moTa) {
		super();
		this.idCTSP = idCTSP;
		this.idSP = idSP;
		this.tenChiTiet = tenChiTiet;
		this.giamGia = giamGia;
		this.moTa = moTa;
	}
	public String getIdCTSP() {
		return idCTSP;
	}
	public void setIdCTSP(String idCTSP) {
		this.idCTSP = idCTSP;
	}
	public String getIdSP() {
		return idSP;
	}
	public void setIdSP(String idSP) {
		this.idSP = idSP;
	}
	public String getTenChiTiet() {
		return tenChiTiet;
	}
	public void setTenChiTiet(String tenChiTiet) {
		this.tenChiTiet = tenChiTiet;
	}
	public double getGiamGia() {
		return giamGia;
	}
	public void setGiamGia(double giamGia) {
		this.giamGia = giamGia;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	
}
