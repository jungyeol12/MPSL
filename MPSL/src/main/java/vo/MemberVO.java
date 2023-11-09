package vo;

public class MemberVO {
	private String memberEmail;
	private String memberPwd;
	private String memberName;
	private Integer memberAge;
	
	
	public MemberVO()
	{
		super();
	}
	
	public Integer getMemberAge() {
		return memberAge;
	}

	public void setMemberAge(Integer memberAge) {
		this.memberAge = memberAge;
	}
	
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	
	public String getMemberEmail()
	{
		return memberEmail;
	}
	
	public void setMemberPwd(String memberPwd)
	{
		this.memberPwd = memberPwd;
	}
	
	public String getMemberPwd()
	{
		return memberPwd;
	}
	
	public void setMemberName(String memberName)
	{
		this.memberName = memberName;
	}
	
	public String getMemberName()
	{
		return memberName;
	}
}