package brand;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import dao.ShopMemberDAO;
import dto.ShopMemberDTO;

/**
 * Servlet implementation class SignUpUpdate
 */
@WebServlet("/SignUpUpdate")
public class SignUpUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("doGet SignUpUpdate");
			/*String id ="1001";*/
			HttpSession session = request.getSession(true);
			if(session.getAttribute("loginUser") == null){
				response.sendRedirect("Login.jsp");
			}else {
				response.sendRedirect("HunSignUpUpdate.jsp");
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("doPost SignUpUpdate");
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			String shopid = request.getParameter("Mbid");
			String shoppw = request.getParameter("Mbpw");
			String shopname = request.getParameter("Mbname");
			String shopzipcode = request.getParameter("Mbzipcode");
			String shopadd1 = request.getParameter("Mbadd1");
			String shopadd2 = request.getParameter("Mbadd2");
			String shopmail = request.getParameter("Mbmail");
			String shopphone = request.getParameter("Mbphone");
			
			System.out.println(shopid+ shoppw+shopname+shopzipcode+shopadd1+shopadd2+ shopmail+shopphone);
			ShopMemberDTO mDto = new ShopMemberDTO(shopid, shoppw, shopname,  shopzipcode, shopadd1, shopadd2, shopmail, shopphone);
			ShopMemberDAO mDao = new ShopMemberDAO();
			mDao.memUpdate(mDto);
			
			HttpSession session = request.getSession(true);
			session.setAttribute("loginUser", mDto);// 섹션 이름
		
			response.sendRedirect("IndexAction");
	}

}
