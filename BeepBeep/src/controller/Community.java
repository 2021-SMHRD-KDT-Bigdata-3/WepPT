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

<<<<<<< HEAD

@WebServlet("/Community") 
=======
@WebServlet("/Community")
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/BeepBeep.git
public class Community extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

<<<<<<< HEAD
		String savePath = request.getServletContext().getRealPath("img");
		int maxSize = 5* 1024* 1024;
		String encoding = "EUC-KR";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		
=======
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/BeepBeep.git
		request.setCharacterEncoding("EUC-KR");
<<<<<<< HEAD
		
=======

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
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/BeepBeep.git
		String title = request.getParameter("title");
		String id = request.getParameter("id");
<<<<<<< HEAD
		String filename = URLEncoder.encode(multi.getFilesystemName("filename"), "EUC-KR");
		String content = request.getParameter("content");
		
		//dto, dao
=======
		String filename = URLEncoder.encode(multi.getFilesystemName("fileName"), "EUC-KR");
		String content = multi.getParameter("content");

		// dto, dao 생성
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/BeepBeep.git
		CommunityDTO commudto = new CommunityDTO(title, id, filename, content);
<<<<<<< HEAD
		CommunityDAO commudao =  new CommunityDAO();
		
=======
		CommunityDAO commudao = new CommunityDAO();

		// dao호출 및 사용
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/BeepBeep.git
		int cnt = commudao.CommuWrite(commudto);
<<<<<<< HEAD
		
		if(cnt>0) {
			System.out.println("커뮤니티 등록 완료");
=======

		if (cnt > 0) {
			System.out.println("커뮤니티 글 작성 성공(｡･∀･)ﾉﾞ");
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/BeepBeep.git
			response.sendRedirect("Community.jsp");
<<<<<<< HEAD
		}else {
			System.out.println("커뮤니티 등록 실패");
=======
		} else {
			System.out.println("커뮤니티 글 작성 실패");
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/BeepBeep.git
			response.sendRedirect("CommunityWrite.jsp");
		}

		
		
		
		
		
		
		
		
	}

}
