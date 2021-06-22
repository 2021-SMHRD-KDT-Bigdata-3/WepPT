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


@WebServlet("/Community") //저장하기 누르면 넘어오는 페이지
public class Community extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//파일 경로, 파일 크기, 파일 이름 ==> 인코딩
		String savePath = request.getServletContext().getRealPath("img");
		int maxSize = 5* 1024* 1024;
		String encoding = "EUC-KR";
		//========여기까지
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		
		request.setCharacterEncoding("EUC-KR");
		
		//값 받아오기
		String title = request.getParameter("title");
		String id = request.getParameter("id");
		String filename = URLEncoder.encode(multi.getFilesystemName("filename"), "EUC-KR");
		String content = request.getParameter("content");
		
		//dto, dao 생성
		CommunityDTO commudto = new CommunityDTO(title, id, filename, content);
		CommunityDAO commudao =  new CommunityDAO();
		
		//dao호출 및 사용
		int cnt = commudao.CommuWrite(commudto);
		
		if(cnt>0) {
			System.out.println("커뮤니티 글 작성 성공(｡･∀･)ﾉﾞ");
			response.sendRedirect("Community.jsp");
		}else {
			System.out.println("커뮤니티 글 작성 실패");
			response.sendRedirect("CommunityWrite.jsp");
		}
		
		
	
	
	
	}

}
