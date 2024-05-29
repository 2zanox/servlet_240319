package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quzi08")
public class GetMethodQuzi08 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request
			, HttpServletResponse response) throws IOException {
		
		// response header setting(헤더 세팅)
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request parameter
		String search = request.getParameter("search");
		
		// list 정의
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		// response 출력(분기)
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>검색 결과</title></head><body>");
		Iterator<String> iter = list.iterator();
		while (iter.hasNext()) {
			String line = iter.next();
			//System.out.println(line);
			if (line.contains(search)) {
				
				// 1. 방식) - 맛집글자 굵게
//				line = line.replace(search, "<b>" + search + "</b>");
//				out.print(line + "<br>");
				
				// 2. 방식) - 맛집글자 굵게
				String[] words = line.split(search);
				out.print(words[0] + "<b>" + search + "</b>" + words[1] + "<br>");
			}
		}
		out.print("</body></html>");
		
	}
}
