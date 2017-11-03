package dwsstudent;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Detail
 */
@WebServlet("/Detail")
public class Detail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Detail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet Detail");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String phone = request.getParameter("phone");
		String major = request.getParameter("major");
		String regdate = request.getParameter("regdate");
		writer.println(
				" <!DOCTYPE html> "+
				" <html> "+
				" <head> "+
				" <meta charset='UTF-8'> "+
				" <title>Insert title here</title> "+
				" <style type='text/css'> "+
				" @import url(http://fonts.googleapis.com/earlyaccess/hanna.css); "+
				" body { margin: 0px; padding: 0px; font-family: 'Hanna', serif; } "+
				" #content { width: 400px; height: 700px; border : 1px solid black; margin: 0 auto; margin-top:50px; background-color: #d8e9ef; "+
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
				" table{ text-align: center; width:100%;}"+
				" </style>  "+
				"<script src='js/jquery-3.2.1.js'></script>"+
				"<script type='text/javascript'> function checked() {  frminsert.submit(); }" + 
				"</script>"+
				"</head> <body>"+
				" <div id = 'content'> "+
				" <div id='dws_title'><a href='index.html'> 디지털 웹 솔루션	<br> 개발자 과정 1기</a></div>"+
				" <div id='dws_manager'> - 학사관리 - </div> " );
		writer.println("<table border=1px>");
		writer.println("<tr><td> ID : </td><td>"+id +"</td></tr>");
		writer.println("<tr><td> 이름 : </td><td>"+name +"</td></tr>");
		writer.println("<tr><td> 나이 : </td><td>"+age +"</td></tr>");
		writer.println("<tr><td> 전공 : </td><td>"+major +"</td></tr>");
		writer.println("<tr><td> 연락처 : </td><td>"+phone +"</td></tr>");
		writer.println("<tr><td> 등록일 : </td><td>"+regdate +"</td></tr>");
		writer.println("</tr>");
		writer.println("</table><br>");
		writer.println("<form action='DwsSelect' name='frminsert' method='post'>");
		writer.println("<div class='div_index'><a href='javascript:checked()' class='btn_index btn13'>출 석 부</a></div>");
		writer.println("</form>");
		writer.println("<div class='div_index'><a href='index.html' class='btn_index btn13'>메인으로</a></div>");
		writer.println("</div> </body> </html>");
				writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doPost Detail");
	}

}
