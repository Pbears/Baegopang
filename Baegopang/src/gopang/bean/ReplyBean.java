package gopang.bean;

public class ReplyBean {
	private int no;
	private String storeName;
	private String orderNumber;
	private String id;
	private String contents;
	private String regDate;
	private int ref;
	private int pnum;
	private int reply;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public int getReply() {
		return reply;
	}

	public void setReply(int reply) {
		this.reply = reply;
	}

	@Override
	public String toString() {
		return "ReplyBean [no=" + no + ", storeName=" + storeName + ", orderNumber=" + orderNumber + ", id=" + id
				+ ", contents=" + contents + ", regDate=" + regDate + ", ref=" + ref + ", pnum=" + pnum + ", reply="
				+ reply + "]";
	}

}
