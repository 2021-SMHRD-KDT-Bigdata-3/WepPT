package model;

public class memberDTO {
	
	private String category;
	private String id;
	private String pw;
	private String name;
	private int age;
	private String gender;
	private String email;
	private int tel;
	private float height;
	private float weight;

	//
	public memberDTO(String category, String id, String pw, String name, int age, String gender, String email, int tel,
			float height, float weight) {
		this.category = category;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.email = email;
		this.tel = tel;
		this.height = height;
		this.weight = weight;
	}

	public memberDTO(String id, String pw) {
		this.category = category;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.email = email;
		this.tel = tel;
		this.height = height;
		this.weight = weight;
	}
	
	
	
	public memberDTO(String id, String pw, String name, int age, String gender, String email, int tel,
			float height, float weight) {
		this.category = category;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.email = email;
		this.tel = tel;
		this.height = height;
		this.weight = weight;
	}
	
	
	
	
	
	
	
	
	
//
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


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getTel() {
		return tel;
	}


	public void setTel(int tel) {
		this.tel = tel;
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
	
	
	
	
	
	
	
	
	
	
	
}

