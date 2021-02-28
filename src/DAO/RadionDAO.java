package DAO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import BEAN.RadioQuestion;
import BEAN.RadionUser;
public class RadionDAO {
	public static List<RadioQuestion> displayRadion(Connection conn){
		PreparedStatement ps=null;
		String query="select * from myquestion";
		List<RadioQuestion> list=new ArrayList<RadioQuestion>();
		try {
			ps=conn.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				int number=rs.getInt("number");
				String question=rs.getString("question");
				String option1=rs.getString("option1");
				String option2=rs.getString("option2");
				String option3=rs.getString("option3");
				String option4=rs.getString("option4");
				String correct=rs.getString("correctanswer");
				RadioQuestion rd=new RadioQuestion(number, question, option1, option2, option3, option4,correct);
				list.add(rd);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}
	public static int CountQuestion(Connection conn){
		PreparedStatement ps=null;
		String query="select * from myquestion";
		int count=0;
		try {
			ps=conn.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				count++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return count;
	}
}
