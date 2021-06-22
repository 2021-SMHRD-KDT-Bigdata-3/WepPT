package controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.CommunityDAO;
import model.CommunityDTO;
import model.memberDTO;

@WebServlet("/Community")
public class Community extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");

		// 파일 경로, 파일 크기, 파일 이름 ==> 인코딩
		String savePath = request.getServletContext().getRealPath("img");
		int maxSize = 5 * 1024 * 1024;
		String encoding = "EUC-KR";
		System.out.println(savePath);
		// ========여기까지

		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding,
				new DefaultFileRenamePolicy());

		HttpSession session = request.getSession();

		// 값 받아오기
		String title = multi.getParameter("title");
		String id = multi.getParameter("id");
		String filename = URLEncoder.encode(multi.getFilesystemName("fileName"), "EUC-KR");
		String content = multi.getParameter("content");

		// dto, dao 생성
		CommunityDTO commudto = new CommunityDTO(title, id, filename, content);
		CommunityDAO commudao = new CommunityDAO();

		// dao호출 및 사용
		int cnt = commudao.CommuWrite(commudto);

		if (cnt > 0) {
			System.out.println("커뮤니티 글 작성 성공(｡･∀･)ﾉﾞ");
			response.sendRedirect("Community.jsp");
		} else {
			System.out.println("커뮤니티 글 작성 실패");
			response.sendRedirect("CommunityWrite.jsp");
		}

		
		
		
		
		
		
		
		
	}

}
