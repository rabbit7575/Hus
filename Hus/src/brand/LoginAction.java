package brand;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ShopMemberDAO;
import dto.ShopMemberDTO;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code="";
		String ctx ="";
		String refer =""; 
		String cutval ="";
		String ref ="";
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("doGet LoginAction");
		HttpSession session = request.getSession(true);
		String inputid = request.getParameter("inputid").trim();
		String inputps = request.getParameter("inputps").trim();
		System.out.println(inputid + inputps);
		
		
		ShopMemberDAO mDao = new ShopMemberDAO();
		ShopMemberDTO mDto = mDao.ckLogin(inputid, inputps);
			/*session.removeAttribute("inputid");*/
		if(mDto != null) {
			ctx = request.getContextPath();
			refer = request.getHeader("referer");
			cutval = "http://localhost:8081"+ctx;
			ref = refer.substring(cutval.length());
			System.out.println("get if : "+ref);
			
			code =ref;
			session.removeAttribute("inputid");
			session.setAttribute("loginUser", mDto);// 섹션 이름
			// 세션 초기화 (혹시모를 앞의 남아 있는 값 제거)
		} else { 
			ctx = request.getContextPath();
			refer = request.getHeader("referer");
			cutval = "http://localhost:8081"+ctx;
			ref = refer.substring(cutval.length());
			System.out.println("get else : "+ref);
			code=ref;
			request.setAttribute("code", "2");
		}
		
		RequestDispatcher dis = request.getRequestDispatcher(code);
		dis.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code="";
		String ctx ="";
		String refer =""; 
		String cutval ="";
		String ref ="";
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("doPost LoginAction");
		HttpSession session = request.getSession(true);
		String inputid = request.getParameter("inputid").trim();
		String inputps = request.getParameter("inputps").trim();
		System.out.println(inputid + inputps);
		
		
		ShopMemberDAO mDao = new ShopMemberDAO();
		ShopMemberDTO mDto = mDao.ckLogin(inputid, inputps);
			/*session.removeAttribute("inputid");*/
		if(mDto != null) {
			ctx = request.getContextPath();
			refer = request.getHeader("referer");
			cutval = "http://localhost:8081"+ctx;
			ref = refer.substring(cutval.length());
			System.out.println("post if : "+ref);
			code =ref;
			session.removeAttribute("inputid");
			session.setAttribute("loginUser", mDto);// 섹션 이름
			// 세션 초기화 (혹시모를 앞의 남아 있는 값 제거)
		} else { 
			ctx = request.getContextPath();
			refer = request.getHeader("referer");
			cutval = "http://localhost:8081"+ctx;
			ref = refer.substring(cutval.length());
			System.out.println("post else : "+ref);
			code=ref;
			request.setAttribute("code", "2");
		}
		
		RequestDispatcher dis = request.getRequestDispatcher(code);
		dis.forward(request, response);
	}
}