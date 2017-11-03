package brand;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ShopMemberDAO;

/**
 * Servlet implementation class IdckAction
 */
@WebServlet("/IdckAction")
public class IdckAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdckAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet IdAction");
		int result = 0;
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String ckid =  request.getParameter("ckid");
		ShopMemberDAO mDao = new ShopMemberDAO();
		result = mDao.idSearch(ckid);
		System.out.println(result);
		
		String str1 = "중복된 아이디입니다.";
		String str2 = "사용 가능한 아이디 입니다.";
		if(result ==1){
			System.out.println(str1);
		}else{
			System.out.println(str2);
		}
		
		request.setAttribute("idCount", result);
		request.setAttribute("message", ckid);
		RequestDispatcher dis = request.getRequestDispatcher("idck.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost IdAction");
		int result = 0;
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String ckid =  request.getParameter("ckid");
		ShopMemberDAO mDao = new ShopMemberDAO();
		result = mDao.idSearch(ckid);
		System.out.println(result);
		
		String str1 = "중복된 아이디입니다.";
		String str2 = "사용 가능한 아이디 입니다.";
		if(result ==1){
			System.out.println(str1);
		}else{
			System.out.println(str2);
		}

		request.setAttribute("idCount", result);
		request.setAttribute("message", ckid);
		RequestDispatcher dis = request.getRequestDispatcher("idck.jsp");
		dis.forward(request, response);
	}

}
