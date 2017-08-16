package Model;

public class SanPham {
	private String idSP;
	private String tenSP;
	private String idCTSP;
	private long gia;
	private int soLuong;
	private String idLoaiSP;
	private String hangSX;
	private String img;
	private String src;

	public SanPham() {

	}

	public SanPham(String idSP, String tenSP, String idCTSP, long gia,
			int soLuong, String idLoaiSP, String hangSX, String img, String src) {
		this.idSP = idSP;
		this.tenSP = tenSP;
		this.idCTSP = idCTSP;
		this.gia = gia;
		this.soLuong = soLuong;
		this.idLoaiSP = idLoaiSP;
		this.hangSX = hangSX;
		this.img = img;
		this.src = src;
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

	public long getGia() {
		return gia;
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

	public long thanhToan() {
		return this.soLuong * this.gia ;
	}

	public String getHangSX() {
		return hangSX;
	}

	public void setHangSX(String hangSX) {
		this.hangSX = hangSX;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public void setGia(long gia) {
		this.gia = gia;
	}
}
