package gopang.bean;

public class BrandBean {
	private int brandNo;
	private String brandName;
	private String picture;
	private String storename;
	private String location;
	private int gpa;
	private String hours;
	private String tel;
	private int minprice;
	private String info;

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

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getGpa() {
		return gpa;
	}

	public void setGpa(int gpa) {
		this.gpa = gpa;
	}

	public String getHours() {
		return hours;
	}

	public void setHours(String hours) {
		this.hours = hours;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getMinprice() {
		return minprice;
	}

	public void setMinprice(int minprice) {
		this.minprice = minprice;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	@Override
	public String toString() {
		return "BrandBean [brandNo=" + brandNo + ", brandName=" + brandName + ", picture=" + picture + ", storename="
				+ storename + ", location=" + location + ", gpa=" + gpa + ", hours=" + hours + ", tel=" + tel
				+ ", minprice=" + minprice + ", info=" + info + "]";
	}

}
