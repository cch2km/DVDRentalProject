package jp.ken.dvdrental.model;

import java.io.Serializable;
import java.sql.Date;

import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;



public class UserModel implements Serializable {
	
    
	

private String user_Id;
	
	@NotEmpty(message="お名前をご入力ください")
	private String name;
	
	@NotEmpty(message="カタカナをご入力ください")
	private String kana;
	
//	@NotEmpty
//	@Length(min=6,max=12,
//			groups=ErrorCheckGroup1.class,
//			message="※6文字以上12文字以下")
	@NotEmpty(groups=ErrorCheckGroup1.class,
			message="※パスワードを省略することはできません")
	@Pattern(regexp="^(?=.*?[a-z])(?=.*?\\d)[a-z\\d]{8,20}$",
			 groups=ErrorCheckGroup1.class,
			 message="※8文字以上20文字以下の半角英数字で入力してください")
	private String password;
	
	
	
			
	@NotEmpty(groups=ErrorCheckGroup1.class,
			message="※生年月日を省略することはできません")
	private String birth;
			
	
	private String gender;
	
	@Pattern(regexp="^(070|080|090)-[0-9]{4}-[0-9]{4}$",
			 groups=ErrorCheckGroup1.class,
			 message="正しい携帯番号をご入力ください")
	private String phone;
	
	//@NotEmpty
	@Email(groups=ErrorCheckGroup1.class,
			message="※正しいメールアドレスをご入力ください")
	private String email;
	
	
	@Pattern(regexp="^[0-9]{3}-[0-9]{4}$",
			groups=ErrorCheckGroup1.class,
			message="※郵便番号をご入力くださ　[例]000-0000")
	private String zip;
	
	@NotEmpty(message="※住所を省略することはできません")
	private String address;
	
	
	@NotEmpty(message="※プランをお選びください")
	private String plan;
	
	private int point;
	
	
	
	
	public String getPlan() {
		return plan;
	}
	public void setPlan(String plan) {
		this.plan = plan;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKana() {
		return kana;
	}
	public void setKana(String kana) {
		this.kana = kana;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "UserModel [user_Id=" + user_Id + ", name=" + name + ", kana=" + kana + ", password=" + password
				+ ", birth=" + birth + ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", zip=" + zip
				+ ", address=" + address + ", plan=" + plan + ", point=" + point + "]";
	}
	
	

}