package com.benito.view;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.benito.dto.Notice;
import com.benito.model.NoticeDAO;
import com.benito.service.KoreanPro;

@WebServlet("/GetNotice.do")
public class GetNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int n_no = Integer.parseInt(request.getParameter("n_no"));
		NoticeDAO ndao = new NoticeDAO();
		Notice noti = new Notice();
		noti = ndao.getNotice(n_no);
		String file1 = noti.getFile1().substring(5); 
		String filepath1 = noti.getFile1().substring(0,4);
		
		file1 = URLEncoder.encode(file1, "UTF-8");	
		
		request.setAttribute("file1", file1);
		request.setAttribute("filepath1", filepath1);
		request.setAttribute("noti", noti);
		
		System.out.println();
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/notice/getNotice.jsp");
		view.forward(request, response);
	}
}
