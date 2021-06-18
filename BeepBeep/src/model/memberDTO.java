package model;

public class memberDTO {
	
	private String category;
	private String id;
	private String pw;
	private String name;
	private int age;
	private int tel;
	private String email;
	private float height;
	private float weight;
	private float bmi;
	
	
	public memberDTO(String category, String id, String pw, String name, int age, int tel, String email, float height,
			float weight, float bmi) {
		this.category = category;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.tel = tel;
		this.email = email;
		this.height = height;
		this.weight = weight;
		this.bmi = bmi;
	}
	
	
	public memberDTO(String id, String pw) {
		this.category = category;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.tel = tel;
		this.email = email;
		this.height = height;
		this.weight = weight;
		this.bmi = bmi;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
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


	public int getTel() {
		return tel;
	}


	public void setTel(int tel) {
		this.tel = tel;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public float getHeight() {
		return height;
	}


	public void setHeight(float height) {
		this.height = height;
	}


	public float getWeight() {
		return weight;
	}


	public void setWeight(float weight) {
		this.weight = weight;
	}


	public float getBmi() {
		return bmi;
	}


	public void setBmi(float bmi) {
		this.bmi = bmi;
	}

	
	
	
	
	
	
}

