package model;

public class CommunityDTO {

	private int num;
	private String title;
	private String id;
	private String filename;
	private String content;
	private String day;
	
	
	public CommunityDTO(int num, String title, String id, String filename, String content, String day) {
		this.num = num;
		this.title = title;
		this.id = id;
		this.filename = filename;
		this.content = content;
		this.day = day;
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getFilename() {
		return filename;
	}


	public void setFilename(String filename) {
		this.filename = filename;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getDay() {
		return day;
	}


	public void setDay(String day) {
		this.day = day;
	}
	
	
	
	
	
}
