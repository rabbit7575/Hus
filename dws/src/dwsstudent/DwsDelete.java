package dwsstudent;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class dwsdelete
 */
@WebServlet("/DwsDelete")
public class DwsDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DwsDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet Delete");

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		DTO sDto = new DTO(id, name);
		DAO sDao = new DAO();
		sDao.Delete(sDto);
		
		ArrayList<DTO> list = new ArrayList<DTO>();
		DAO DaoAS = new DAO();
		list = DaoAS.AllSelect();
		request.setAttribute("dwslist", list);
		RequestDispatcher dis = request.getRequestDispatcher("Select.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost Delete");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		DTO sDto = new DTO(id, name);
		DAO sDao = new DAO();
		
		int result = sDao.Delete(sDto);
		writer.println(
				" <!DOCTYPE html> "+
				" <html> "+
				" <head> "+
				" <meta charset='UTF-8'> "+
				" <title>Insert title here</title> "+
				" <style type='text/css'> "+
				" @import url(http://fonts.googleapis.com/earlyaccess/hanna.css); "+
				" body { margin: 0px; padding: 0px; font-family: 'Hanna', serif; } "+
				" #content { width: 260px; height: 400px; border : 1px solid black; margin: 0 auto; margin-top:50px; background-color: #d8e9ef; "+
				" border-radius:10px; } "+
				" #dws_title { padding-top :25px ; text-align: center; font-size: 20px; color: black; } "+
				" a { text-decoration: none; } "+
				" #dws_manager { text-align: center; padding-top: 10px; margin-top:10px; margin-top:10px; padding-bottom: 70px; } "+
				" .btn_index { padding: 8px 12px; background-color: blue; color: white; width: 79px; display: inline-block; border-radius:20px; }"+	
				" .div_index { text-align:center; padding-bottom:22px; } "+ 
				" .btn13{ background-color:#4ea1d3 ; }"+
				" .btn13:HOVER{ background-color: #3C8CBE; }"+
				" .btn24{ background-color:#e85a71 ; } "+
				" .btn24:HOVER{  background-color: #3C8CBE; }"+
				" .msg{ text-align: center; }"+
				" </style>  </head> <body>"+
				" <div id = 'content'> "+
				" <div id='dws_title'><a href='index.html'> 디지털 웹 솔루션	<br> 개발자 과정 1기</a></div>"+
				" <div id='dws_manager'> - 학사관리 - </div> " );
				if (result > 0) {
					writer.println("<div class='msg' >삭제가 되었습니다.</div><br><br>");
				} else {
					writer.println("<div class='msg'>삭제가 실패되었습니다.</div><br><br>");
				}
				
				writer.println(
						"<div class='div_index'><a href='index.html' class='btn_index btn13'>메인으로</a></div>"
						+ "</div> </body> </html>");
				writer.close();
	}

}
