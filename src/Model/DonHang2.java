package Model;

public class DonHang2 {
	private String maDH;
	private String tenTK;
	private String sanPham;
	private String soLuong;
	private String donGia;
	private String ngayMua;
	public String getMaDH() {
		return maDH;
	}
	public void setMaDH(String maDH) {
		this.maDH = maDH;
	}
	public String getTenTK() {
		return tenTK;
	}
	public void setTenTK(String tenTK) {
		this.tenTK = tenTK;
	}
	public String getSanPham() {
		return sanPham;
	}
	public void setSanPham(String sanPham) {
		this.sanPham = sanPham;
	}
	public String getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(String soLuong) {
		this.soLuong = soLuong;
	}
	public String getDonGia() {
		return donGia;
	}
	public void setDonGia(String donGia) {
		this.donGia = donGia;
	}
	public String getNgayMua() {
		return ngayMua;
	}
	public void setNgayMua(String ngayMua) {
		this.ngayMua = ngayMua;
	}
	public DonHang2(String maDH, String tenTK, String sanPham, String soLuong, String donGia, String ngayMua) {
		super();
		this.maDH = maDH;
		this.tenTK = tenTK;
		this.sanPham = sanPham;
		this.soLuong = soLuong;
		this.donGia = donGia;
		this.ngayMua = ngayMua;
	}
	public DonHang2() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
