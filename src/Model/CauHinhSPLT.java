package Model;

public class CauHinhSPLT {
	private String idSP;
	private String tenSP;
	private String CPU;
	private String Ram;
	private String oCung;
	private String manHinh;
	private String camUng;
	private String doHoa;
	private String webCam;
	private String cLV;
	private long gia;
	private String img;
	private String src;
	public CauHinhSPLT() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CauHinhSPLT(String idSP, String tenSP, String cPU, String ram, String oCung, String manHinh, String camUng,
			String doHoa, String webCam, String cLV, long gia, String img, String src) {
		super();
		this.idSP = idSP;
		this.tenSP = tenSP;
		CPU = cPU;
		Ram = ram;
		this.oCung = oCung;
		this.manHinh = manHinh;
		this.camUng = camUng;
		this.doHoa = doHoa;
		this.webCam = webCam;
		this.cLV = cLV;
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
	public String getCPU() {
		return CPU;
	}
	public void setCPU(String cPU) {
		CPU = cPU;
	}
	public String getRam() {
		return Ram;
	}
	public void setRam(String ram) {
		Ram = ram;
	}
	public String getoCung() {
		return oCung;
	}
	public void setoCung(String oCung) {
		this.oCung = oCung;
	}
	public String getManHinh() {
		return manHinh;
	}
	public void setManHinh(String manHinh) {
		this.manHinh = manHinh;
	}
	public String getCamUng() {
		return camUng;
	}
	public void setCamUng(String camUng) {
		this.camUng = camUng;
	}
	public String getDoHoa() {
		return doHoa;
	}
	public void setDoHoa(String doHoa) {
		this.doHoa = doHoa;
	}
	public String getWebCam() {
		return webCam;
	}
	public void setWebCam(String webCam) {
		this.webCam = webCam;
	}
	public String getcLV() {
		return cLV;
	}
	public void setcLV(String cLV) {
		this.cLV = cLV;
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
