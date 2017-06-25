package gopang.bean;

public class MenuBean {
	private String menuName;
	private int price;
	private String info;
	private String picture;

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "MenuBean [menuName=" + menuName + ", price=" + price + ", info=" + info + ", picture=" + picture + "]";
	}

}
