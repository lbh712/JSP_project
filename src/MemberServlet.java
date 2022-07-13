
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MemberServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		
		String name = request.getParameter("name");
		out.println("이름 : ");
		out.println(name);
		
		String rsm1 = request.getParameter("rsm1");
		String rsm2 = request.getParameter("rsm2");
		out.println("<br>주민등록번호 : ");
		out.print(rsm1 + "-" + rsm2);
		
		String id = request.getParameter("id");
		out.println("<br>아이디 : ");
		out.println(id);
		
		String pw = request.getParameter("pw");
		out.println("<br>비밀번호 : ");
		out.println(pw);
		
		String pwchk = request.getParameter("pwchk");
		out.println("<br>비밀번호확인 : ");
		out.println(pwchk);
		
		String email = request.getParameter("email");
		if(request.getParameter("email_dns").trim() == "") {
			email += "@" + request.getParameter("emailaddr");
		}else {
			email += "@" + request.getParameter("email_dns");
		}
		out.println("</b><br>이메일 : <b>");
		out.print(email);
		
		String post = request.getParameter("post");
		out.println("<br>우편번호 : ");
		out.print(post);
		
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		out.println("<br>주소 : ");
		out.print(addr1 + "  " + addr2);
		
		String mobile1 = request.getParameter("mobile1");
		String mobile2 = request.getParameter("mobile2");
		String mobile3 = request.getParameter("mobile3");
		out.println("<br>핸드폰번호 : ");
		out.print(mobile1 +"-" + mobile2 + "-" + mobile3);
		
		String job = request.getParameter("job");
		out.println("<br>당신이 선택한 직업 :<b>");
		out.print(job);
		
		String chk_mail = request.getParameter("chk_mail");
		out.println("</b><br> 메일 정보 수신 여부 : <b>");
		out.println(chk_mail);
		

		String interests[] = request.getParameterValues("interest");
		if (interests == null) {
			out.print("<br>선택한 항목이 없습니다");
		} else {
			out.println("<br>당신의 관심분야 : ");
			for (String interest : interests) {
				out.print(interest + " ");
			}
		}
		
		out.println("<br><br></b></pre><a href ='javascript:history.go(-1)'>다시</a>");
		out.println("</body></html>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
