package ch04.ctrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch04.Human;
	
	@WebServlet("/GetJavaDataCtrl.do")
	public class GetJavaDataCtrl extends HttpServlet {
		private static final long serialVersionUID = 1L;
	    public GetJavaDataCtrl() { super(); }
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	String[] names = {"김도도", "이레레", "박미미", "임솔솔", "장라라"};
	    
	    	ArrayList<String> lst1 = new ArrayList<>();
	    	lst1.add("김레레");
	    	lst1.add("박도도");
	    	lst1.add("장솔솔");
	    	
	    	HashMap<String, String> map = new HashMap<>();
	    	map.put("name0", "박도도");
	    	map.put("name1", "관리자");
	    	map.put("name2", "박천사");
	    	map.put("name3", "박미미");
	    	
	    	HashMap<String, String> map2 = new HashMap<>();
	    	map2.put("name", "김도도");
	    	map2.put("age", "25");
	    	map2.put("height", "170");
	    	
	    	ArrayList<Human> hList = new ArrayList<Human>();	
	    	Human h1 = new Human();
	    	h1.setCountry("대한민국");
	    	h1.setName("김도도");
	    	h1.setAge(20);
	    	h1.setHobby("산책하기");
	    	
	       	Human h2 = new Human();
	    	h2.setCountry("그리스");
	    	h2.setName("박미미");
	    	h2.setAge(25);
	    	h2.setHobby("음악듣기");
	    	
	       	Human h3 = new Human();
	    	h3.setCountry("덴마크");
	    	h3.setName("이레레");
	    	h3.setAge(26);
	    	
	    	hList.add(h1);
	    	hList.add(h2);
	    	hList.add(h3);
	    	
	    	request.setAttribute("names", names);
	    	request.setAttribute("lst1", lst1);
	    	request.setAttribute("map", map);
	    	request.setAttribute("map2", map2);
	    	request.setAttribute("hList", hList);
	    	
	    	RequestDispatcher view = request.getRequestDispatcher("06getJavaData.jsp");
	    	view.forward(request, response);
	    }

	}

