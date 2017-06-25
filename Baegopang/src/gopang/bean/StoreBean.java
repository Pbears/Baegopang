package gopang.bean;

public class StoreBean {
	private String storeName;
	private String location;
	private int gpa;
	private String hours;
	private String tel;
	private int minprice;
	private String info;

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
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
		return "StoreBean [storeName=" + storeName + ", location=" + location + ", gpa=" + gpa + ", hours=" + hours
				+ ", tel=" + tel + ", minprice=" + minprice + ", info=" + info + "]";
	}

}
