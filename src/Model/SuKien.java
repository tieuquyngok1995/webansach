package Model;

public class SuKien {
	private String STT;
	private String tieuDe;
	private String nDTT;
	private String nDC;
	private String ngayDang;
	public SuKien() {
		super();
		// TODO Auto-generated constructor stub
	}



	public String getNgayDang() {
		return ngayDang;
	}



	public void setNgayDang(String ngayDang) {
		this.ngayDang = ngayDang;
	}



	public SuKien(String sTT, String tieuDe, String nDTT, String nDC, String ngayDang) {
		super();
		STT = sTT;
		this.tieuDe = tieuDe;
		this.nDTT = nDTT;
		this.nDC = nDC;
		this.ngayDang = ngayDang;
	}



	public String getSTT() {
		return STT;
	}

	public void setSTT(String sTT) {
		STT = sTT;
	}

	public String getTieuDe() {
		return tieuDe;
	}

	public void setTieuDe(String tieuDe) {
		this.tieuDe = tieuDe;
	}

	public String getnDTT() {
		return nDTT;
	}

	public void setnDTT(String nDTT) {
		this.nDTT = nDTT;
	}

	public String getnDC() {
		return nDC;
	}

	public void setnDC(String nDC) {
		this.nDC = nDC;
	}
	
	 
}
