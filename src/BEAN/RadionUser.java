package BEAN;

public class RadionUser {
	private int num;
	private String answerUser;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public RadionUser(int num, String answerUser) {
		super();
		this.num = num;
		this.answerUser = answerUser;
	}
	public RadionUser() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getAnswerUser() {
		return answerUser;
	}
	public void setAnswerUser(String answerUser) {
		this.answerUser = answerUser;
	}
}
