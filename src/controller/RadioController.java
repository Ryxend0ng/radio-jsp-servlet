package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.RadioQuestion;
import BEAN.RadionUser;
import DAO.RadionDAO;
import DB.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 * Servlet implementation class RadioController
 */
@WebServlet("/RadioController")
public class RadioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RadioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn=null;
		try {
			conn=DBConnection.getConnection();
			List<RadionUser>listUser=new ArrayList<RadionUser>();
			List<RadioQuestion> listAnswer=RadionDAO.displayRadion(conn);
			
			for(int i=1;i<=RadionDAO.CountQuestion(conn);i++) {
				RadionUser ru=new RadionUser();
				
				String answer=request.getParameter(Integer.toString(i));
				ru.setNum(i);
				ru.setAnswerUser(answer);
				listUser.add(ru);
				
			}
			
			request.setAttribute("listUser", listUser);
			request.setAttribute("listAnswer", listAnswer);
			for(int i=0;i<listUser.size();i++) {
				if((listUser.get(i).getNum() != 0)&&(listUser.get(i).getAnswerUser() == null)){
					request.setAttribute("msg", "ban chua tra loi het cau hoi,vi vay chi co the kiem tra dap an cua ban dien hien tai");
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/veiw/ProcessRadio.jsp");
		rd.forward(request, response);
		
	}

}
