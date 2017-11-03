package dto;

import java.sql.Date;

public class ShopMemberDTO {
	private String shopid;
	private String shoppw;
	private String shopname;
	private String shopzipcode;
	private String shopadd1;
	private String shopadd2;
	private String shopmail;
	private String shopphone;
	private Date shopregdate;
	
	public ShopMemberDTO(){
		
	}

	public ShopMemberDTO(String shopid, String shoppw, String shopname, String shopzipcode, String shopadd1,
			String shopadd2, String shopmail, String shopphone) {
		super();
		this.shopid = shopid;
		this.shoppw = shoppw;
		this.shopname = shopname;
		this.shopzipcode = shopzipcode;
		this.shopadd1 = shopadd1;
		this.shopadd2 = shopadd2;
		this.shopmail = shopmail;
		this.shopphone = shopphone;
	}
	

	public ShopMemberDTO(String shopid, String shoppw, String shopname, String shopzipcode, String shopadd1,
			String shopadd2, String shopmail, String shopphone, Date shopregdate) {
		super();
		this.shopid = shopid;
		this.shoppw = shoppw;
		this.shopname = shopname;
		this.shopzipcode = shopzipcode;
		this.shopadd1 = shopadd1;
		this.shopadd2 = shopadd2;
		this.shopmail = shopmail;
		this.shopphone = shopphone;
		this.shopregdate = shopregdate;
	}

	public String getShopid() {
		return shopid;
	}

	public void setShopid(String shopid) {
		this.shopid = shopid;
	}

	public String getShoppw() {
		return shoppw;
	}

	public void setShoppw(String shoppw) {
		this.shoppw = shoppw;
	}

	public String getShopname() {
		return shopname;
	}

	public void setShopname(String shopname) {
		this.shopname = shopname;
	}

	public String getShopzipcode() {
		return shopzipcode;
	}

	public void setShopzipcode(String shopzipcode) {
		this.shopzipcode = shopzipcode;
	}

	public String getShopadd1() {
		return shopadd1;
	}

	public void setShopadd1(String shopadd1) {
		this.shopadd1 = shopadd1;
	}

	public String getShopadd2() {
		return shopadd2;
	}

	public void setShopadd2(String shopadd2) {
		this.shopadd2 = shopadd2;
	}

	public String getShopmail() {
		return shopmail;
	}

	public void setShopmail(String shopmail) {
		this.shopmail = shopmail;
	}

	public String getShopphone() {
		return shopphone;
	}

	public void setShopphone(String shopphone) {
		this.shopphone = shopphone;
	}

	public Date getShopregdate() {
		return shopregdate;
	}

	public void setShopregdate(Date shopregdate) {
		this.shopregdate = shopregdate;
	}
	
}
