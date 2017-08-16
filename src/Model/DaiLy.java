package Model;

public class DaiLy {
	private String maDaiLy;
	private String tenDaiLy;
	private String diaChiDaiLy;
	private String ngayKHD;
	private String matHang;
	public DaiLy(String maDaiLy, String daiLy, String diaChiDaiLy, String ngayDaiLy, String matHang) {
		super();
		this.maDaiLy = maDaiLy;
		tenDaiLy = tenDaiLy;
		this.diaChiDaiLy = diaChiDaiLy;
		this.ngayKHD = ngayKHD;
		this.matHang = matHang;
	}
	public DaiLy() {
		// TODO Auto-generated constructor stub
	}
	public String getMaDaiLy() {
		return maDaiLy;
	}
	public void setMaDaiLy(String maDaiLy) {
		this.maDaiLy = maDaiLy;
	}
	public String getTenDaiLy() {
		return tenDaiLy;
	}
	public void setTenDaiLy(String tenDaiLy) {
		this.tenDaiLy = tenDaiLy;
	}
	public String getDiaChiDaiLy() {
		return diaChiDaiLy;
	}
	public void setDiaChiDaiLy(String diaChiDaiLy) {
		this.diaChiDaiLy = diaChiDaiLy;
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
