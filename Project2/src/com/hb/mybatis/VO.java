package com.hb.mybatis;

public class VO {
	private String idx, id, pwd, email, name, gender, age, photo;
	
	public VO() {}
	public VO(String idx, String id, String pwd, String email, String name, String gender, String age, String photo) {
		super();
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.photo = photo;
	}

	
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "VO [idx=" + idx + ", id=" + id + ", pwd=" + pwd + ", email=" + email + ", name=" + name + ", gender="
				+ gender + ", age=" + age + ", photo=" + photo + "]";
	}
	
}
