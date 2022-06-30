package BEAN;

public class Member {
//	memberID int IDENTITY(1,1) primary key,
//	memberName nvarchar(45),
//	memberPass nvarchar(45),
//	memberImage int,
//	fullName nvarchar(225),
//	categorymemberID int,
	
	private int memberID;
	private int categorymemberID;
	private String memberName;
	private String email;
	private String memberPass;
	private String memberImage;
	private String fullName;
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	private int status;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getMemberID() {
		return memberID;
	}
	public String getMemberImage() {
		return memberImage;
	}
	public void setMemberImage(String memberImage) {
		this.memberImage = memberImage;
	}
	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}
	public int getCategorymemberID() {
		return categorymemberID;
	}
	public void setCategorymemberID(int categorymemberID) {
		this.categorymemberID = categorymemberID;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPass() {
		return memberPass;
	}
	public void setMemberPass(String memberPass) {
		this.memberPass = memberPass;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	
	
	
}
