package gopang.bean;

public class AddToCartBean {
	
	private String menuName;
	private int cnt;
	private int price;

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "AddToCartBean [menuName=" + menuName + ", cnt=" + cnt + ", price=" + price + "]";
	}

}
