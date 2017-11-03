package dwsstudent;

import java.sql.Date;

public class DTO {
	private String id;
	private String name;
	private int age;
	private String major;
	private String phone;
	private Date regdate;
	
	public DTO(){}
	
	
	public DTO(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}


	public DTO(String id, String name, int age, String major, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.major = major;
		this.phone = phone;
	}

	public DTO(String id, String name, int age, String major, String phone, Date regdate) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.major = major;
		this.phone = phone;
		this.regdate = regdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}