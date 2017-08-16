package Model;

public class SanPhamGY {
	private String idSP;
	private String tenSP;
	private long gia;
	private String img;
	private String src;
	public SanPhamGY() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SanPhamGY(String idSP, String tenSP, long gia, String img, String src) {
		super();
		this.idSP = idSP;
		this.tenSP = tenSP;
		this.gia = gia;
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
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	
}
