package Model;



public class LoaiSanPham {
	private String idLoaiSP;
	private String tenLoaiSP;
	private String idSP;

	public LoaiSanPham() {

	}

	public LoaiSanPham(String idLoaiSP, String tenLoaiSP, String idSP) {
		super();
		this.idLoaiSP = idLoaiSP;
		this.tenLoaiSP = tenLoaiSP;
		this.idSP = idSP;
	}

	public String getIdLoaiSP() {
		return idLoaiSP;
	}

	public void setIdLoaiSP(String idLoaiSP) {
		this.idLoaiSP = idLoaiSP;
	}

	public String getTenLoaiSP() {
		return tenLoaiSP;
	}

	public void setTenLoaiSP(String tenLoaiSP) {
		this.tenLoaiSP = tenLoaiSP;
	}

	public String getIdSP() {
		return idSP;
	}

	public void setIdSP(String idSP) {
		this.idSP = idSP;
	}
	
	
}
