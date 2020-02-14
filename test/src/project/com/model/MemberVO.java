package project.com.model;

public class MemberVO {
	private String memberid;
	private String memberpw;
	private String memberemail;
	
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getMemberpw() {
		return memberpw;
	}
	public void setMemberpw(String memberpw) {
		this.memberpw = memberpw;
	}
	public String getMemberemail() {
		return memberemail;
	}
	public void setMemberemail(String memberemail) {
		this.memberemail = memberemail;
	}
	@Override
	public String toString() {
		return "MemberVO [memberid=" + memberid + ", memberpw=" + memberpw + ", memberemail=" + memberemail + "]";
	}
	
	
	
}
