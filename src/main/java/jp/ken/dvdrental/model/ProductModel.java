package jp.ken.dvdrental.model;

import java.io.Serializable;

public class ProductModel implements Serializable {
	
	private int product_Id;
	private String product_name; 
	private String type; 
	private int account; 
	private String imgurl; 
	private String artist; 
	private String description; 
	private String director;
	private String story;
	private String dir;
	
	
	public int getProduct_Id() {
		return product_Id;
	}
	public void setProduct_Id(int product_Id) {
		this.product_Id = product_Id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getAccount() {
		return account;
	}
	public void setAccount(int account) {
		this.account = account;
	}
	public String getImgurl() {
		return imgurl;
	}
	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}

	@Override
	public String toString() {
		return "ProductModel [product_Id=" + product_Id + ", product_name=" + product_name + ", type=" + type
				+ ", account=" + account + ", imgurl=" + imgurl + ", artist=" + artist + ", description=" + description + ", director="
				+ director + ", story=" + story + "]";
	}
	public String getDir() {
		return dir;
	}
	public void setDir(String dir) {
		this.dir = dir;
	}

	
	

}
