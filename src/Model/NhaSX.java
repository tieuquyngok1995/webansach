package Model;

public class NhaSX {
	private String maNhaSX;
	private String tenNhaSX;
	private String diaChiNhaSX;
	private String ngayKHD;
	private String matHang;
	public NhaSX() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public NhaSX(String maNhaSX, String tenNhaSX, String diaChiNhaSX, String ngayKHD, String matHang) {
		super();
		this.maNhaSX = maNhaSX;
		this.tenNhaSX = tenNhaSX;
		this.diaChiNhaSX = diaChiNhaSX;
		this.ngayKHD = ngayKHD;
		this.matHang = matHang;
	}

	public String getMaNhaSX() {
		return maNhaSX;
	}
	public void setMaNhaSX(String maNhaSX) {
		this.maNhaSX = maNhaSX;
	}
	public String getTenNhaSX() {
		return tenNhaSX;
	}
	public void setTenNhaSX(String tenNhaSX) {
		this.tenNhaSX = tenNhaSX;
	}
	public String getDiaChiNhaSX() {
		return diaChiNhaSX;
	}
	public void setDiaChiNhaSX(String diaChiNhaSX) {
		this.diaChiNhaSX = diaChiNhaSX;
	}
	public String getNgayKHD() {
		return ngayKHD;
	}
	public void setNgayKHD(String ngayKHD) {
		this.ngayKHD = ngayKHD;
	}
	public String getMatHang() {
		return matHang;
	}
	public void setMatHang(String matHang) {
		this.matHang = matHang;
	}
	
}
