package biz;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import vo.MemberVO;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		MemberDAO dao = new MemberDAO();
		boolean isExist = dao.existID(request.getParameter("memberEmail"));
		int result = 0;
		
		if(isExist) {
			out.println("<script> alert('이미 존재하지 않는 Email 입니다. 다시 입력해주세요.'); history.back(); </script>");
		} else {
			MemberVO data = new MemberVO();
			data.setMemberEmail(request.getParameter("email"));
			data.setMemberPwd(request.getParameter("pwd"));
			data.setMemberName(request.getParameter("name"));
			data.setMemberAge(Integer.parseInt(request.getParameter("age")));
			
			result = dao.insertMember(data);
			if(result > 0) {
				HttpSession session = request.getSession();
				session.setAttribute("loginOK", data);
				out.println("<script> alert('회원가입에 성공했습니다.'); </script>");
			} else {
				out.println("<script> alert('회원가입에 실패했습니다.'); </script>");
			}
			
			response.sendRedirect("/MPSL/index.jsp");
		}
	}
}
