package DAO;

public class SanPham {
	private String idSP;
	private String tenSP;
	private String idCTSP;
	private double gia;
	private int soLuong;
	private String idLoaiSP;
	private String img;
	private double giamGia;
	public SanPham(){
		
	}
	public SanPham(String idSP, String tenSP, String idCTSP, double gia, int soLuong, String idLoaiSP, String img, double giamGia) {
		this.idSP = idSP;
		this.tenSP = tenSP;
		this.idCTSP = idCTSP;
		this.gia = gia;
		this.soLuong = soLuong;
		this.idLoaiSP = idLoaiSP;
		this.img = img;
		this.giamGia = giamGia;
	}

	public double getGiamGia() {
		return giamGia;
	}
	public void setGiamGia(double giamGia) {
		this.giamGia = giamGia;
	}
	public String getIdSP() {
		return idSP;
	}

	public void setIdSP(String idSP) {
		this.idSP = idSP;
	}

	public String getTenSP() {
		return tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public String getIdCTSP() {
		return idCTSP;
	}

	public void setIdCTSP(String idCTSP) {
		this.idCTSP = idCTSP;
	}

	public double getGia() {
		return gia;
	}

	public void setGia(double gia) {
		this.gia = gia;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getIdLoaiSP() {
		return idLoaiSP;
	}

	public void setIdLoaiSP(String idLoaiSP) {
		this.idLoaiSP = idLoaiSP;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	public double thanhToan(){
		return this.soLuong*this.gia-this.soLuong*this.gia*this.giamGia;
	}
}
