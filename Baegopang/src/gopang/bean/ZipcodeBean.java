package gopang.bean;

public class ZipcodeBean {
	private String zipzode;
	private String sido;
	private String gugun;
	private String dong;
	private String bunji;
	private String seq;

	public ZipcodeBean(String zipzode, String sido, String gugun, String dong, String bunji, String seq) {
		super();
		this.zipzode = zipzode;
		this.sido = sido;
		this.gugun = gugun;
		this.dong = dong;
		this.bunji = bunji;
		this.seq = seq;
	}

	public String getZipzode() {
		return zipzode;
	}

	public void setZipzode(String zipzode) {
		this.zipzode = zipzode;
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getGugun() {
		return gugun;
	}

	public void setGugun(String gugun) {
		this.gugun = gugun;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public String getBunji() {
		return bunji;
	}

	public void setBunji(String bunji) {
		this.bunji = bunji;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	@Override
	public String toString() {
		return "ZipcodeBean [zipzode=" + zipzode + ", sido=" + sido + ", gugun=" + gugun + ", dong=" + dong + ", bunji="
				+ bunji + ", seq=" + seq + "]";
	}

}
