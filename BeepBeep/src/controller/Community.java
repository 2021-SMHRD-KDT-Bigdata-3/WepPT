package controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.CommunityDAO;
import model.CommunityDTO;


@WebServlet("/Community") 
public class Community extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String savePath = request.getServletContext().getRealPath("img");
		int maxSize = 5* 1024* 1024;
		String encoding = "EUC-KR";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		
		request.setCharacterEncoding("EUC-KR");
		
		String title = request.getParameter("title");
		String id = request.getParameter("id");
		String filename = URLEncoder.encode(multi.getFilesystemName("filename"), "EUC-KR");
		String content = request.getParameter("content");
		
		//dto, dao
		CommunityDTO commudto = new CommunityDTO(title, id, filename, content);
		CommunityDAO commudao =  new CommunityDAO();
		
		int cnt = commudao.CommuWrite(commudto);
		
		if(cnt>0) {
			System.out.println("커뮤니티 등록 완료");
			response.sendRedirect("Community.jsp");
		}else {
			System.out.println("커뮤니티 등록 실패");
			response.sendRedirect("CommunityWrite.jsp");
		}
		
		
	
	
	
	}

}
