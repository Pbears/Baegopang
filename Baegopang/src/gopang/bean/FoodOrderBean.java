package gopang.bean;

//ordernumber, memberid, membername, membertel, memberaddress, price, orderinfo, menuname, amount, storename, storeaddress, storetel, ordertime, state, hit
public class FoodOrderBean {
	private String ordernumber;
	private String memberid;
	private String membername;
	private String membertel;
	private String memberaddress;
	private String price;
	private String orderinfo;
	private String menuname;
	private String amount;
	private String storename;
	private String storeaddress;
	private String storetel;
	private String ordertime;
	private String state;
	private String hit;
	public String getOrdernumber() {
		return ordernumber;
	}
	public void setOrdernumber(String ordernumber) {
		this.ordernumber = ordernumber;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getMembertel() {
		return membertel;
	}
	public void setMembertel(String membertel) {
		this.membertel = membertel;
	}
	public String getMemberaddress() {
		return memberaddress;
	}
	public void setMemberaddress(String memberaddress) {
		this.memberaddress = memberaddress;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getOrderinfo() {
		return orderinfo;
	}
	public void setOrderinfo(String orderinfo) {
		this.orderinfo = orderinfo;
	}
	public String getMenuname() {
		return menuname;
	}
	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public String getStoreaddress() {
		return storeaddress;
	}
	public void setStoreaddress(String storeaddress) {
		this.storeaddress = storeaddress;
	}
	public String getStoretel() {
		return storetel;
	}
	public void setStoretel(String storetel) {
		this.storetel = storetel;
	}
	public String getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}
	public FoodOrderBean(String ordernumber, String memberid, String membername, String membertel, String memberaddress,
			String price, String orderinfo, String menuname, String amount, String storename, String storeaddress,
			String storetel, String ordertime, String state, String hit) {
		super();
		this.ordernumber = ordernumber;
		this.memberid = memberid;
		this.membername = membername;
		this.membertel = membertel;
		this.memberaddress = memberaddress;
		this.price = price;
		this.orderinfo = orderinfo;
		this.menuname = menuname;
		this.amount = amount;
		this.storename = storename;
		this.storeaddress = storeaddress;
		this.storetel = storetel;
		this.ordertime = ordertime;
		this.state = state;
		this.hit = hit;
	}
	public FoodOrderBean() {
		super();
	}
	@Override
	public String toString() {
		return "FoodOrderBean [ordernumber=" + ordernumber + ", memberid=" + memberid + ", membername=" + membername
				+ ", membertel=" + membertel + ", memberaddress=" + memberaddress + ", price=" + price + ", orderinfo="
				+ orderinfo + ", menuname=" + menuname + ", amount=" + amount + ", storename=" + storename
				+ ", storeaddress=" + storeaddress + ", storetel=" + storetel + ", ordertime=" + ordertime + ", state="
				+ state + ", hit=" + hit + "]";
	}
}
