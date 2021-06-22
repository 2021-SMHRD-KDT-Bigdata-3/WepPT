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

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	

<<<<<<< HEAD
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
		String filename = URLEncoder.encode(multi.getFilesystemName("fileName"), "EUC-KR");
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
		
		
	
	
=======

				request.setCharacterEncoding("EUC-KR");

			

				String savePath = request.getServletContext().getRealPath("img");
				int maxSize = 5* 1024* 1024;
				String encoding = "EUC-KR";
				System.out.println(savePath);
				//C:\Users\smhrd\git\BeepBeep\BeepBeep\WebContent\images
				MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
				
				
				
			 	HttpSession session = request.getSession();
				
				memberDTO dto = (memberDTO)session.getAttribute("info");
				
				String title = multi.getParameter("title");
				String id = multi.getParameter("id"); // 이거 아마도 로그인 한 사람 아이디로 판단?.
				String filename = URLEncoder.encode(multi.getFilesystemName("filename"), "EUC-KR");
				String content = multi.getParameter("content");
				
				System.out.println(title);
				System.out.println(id);
				System.out.println(filename);
				System.out.println(content);
				
				
				
				
				//dto, dao �깮�꽦
				CommunityDTO commudto = new CommunityDTO(title, id, filename, content);
				CommunityDAO commudao =  new CommunityDAO();
				
				//dao�샇異� 諛� �궗�슜
				int cnt = commudao.CommuWrite(commudto);
				
				if(cnt>0) {
					System.out.println("而ㅻ�ㅻ땲�떚 湲� �옉�꽦 �꽦怨�(節∽쉈��節�)絶됵풛");
					response.sendRedirect("Community.jsp");
				}else {
					System.out.println("而ㅻ�ㅻ땲�떚 湲� �옉�꽦 �떎�뙣");
					response.sendRedirect("CommunityWrite.jsp");
				}
				
				
			
			
			
			}


>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/WepPT.git
	
	}

