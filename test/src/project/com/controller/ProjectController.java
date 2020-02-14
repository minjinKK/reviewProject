package project.com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.com.model.MemberVO;
import project.com.service.ProjectService;



/**
 * Servlet implementation class ProjectController
 */
@WebServlet({"/login.do"})
public class ProjectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProjectService service;   
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectController() {
        super();
        System.out.println("ProjectController");
        service = new ProjectService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sPath = request.getServletPath();
		System.out.println("doget..."+sPath);
		if (sPath.equals("/index.do")) {
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}else if (sPath.equals("/login.do")) {
			String memberid = request.getParameter("memberid");
			String memberpw = request.getParameter("memberpw");
			
			MemberVO vo = new MemberVO();
			vo.setMemberid(memberid);
			vo.setMemberpw(memberpw);
			MemberVO vo2 = service.selectOne(vo);
			
			if ( vo2.getMemberid() != null) {
			
				
				
			System.out.println("login result success");
			
			
			RequestDispatcher rd = request.getRequestDispatcher("main_rating.jsp");
			rd.forward(request, response);
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
