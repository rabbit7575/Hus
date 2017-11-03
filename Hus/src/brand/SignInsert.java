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
@WebServlet("/SignInsert")
public class SignInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("doGet SignInsert");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("doPost SignInsert");
			
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
			ShopMemberDTO mDto = new ShopMemberDTO(shopid, shoppw, shopname, shopzipcode, shopadd1, shopadd2, shopmail, shopphone);
			ShopMemberDAO mDao = new ShopMemberDAO();
			mDao.memInsert(mDto);
			request.setAttribute("Shopname", shopname);
			RequestDispatcher dis = request.getRequestDispatcher("Welcome.jsp");
			dis.forward(request, response);
	}

}
