package gopang.bean;

public class BrandBean {
	private int brandNo;
	private String brandName;
	private String picture;

	public int getBrandNo() {
		return brandNo;
	}

	public void setBrandNo(int brandNo) {
		this.brandNo = brandNo;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "ChickenMainBean [brandNo=" + brandNo + ", brandName=" + brandName + ", picture=" + picture + "]";
	}

}
