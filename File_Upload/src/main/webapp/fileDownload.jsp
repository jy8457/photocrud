<%@ page import="java.io.File" %>	<!-- java.io.File을 import 하였따.!!! -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일업로드 메인 페이지</title>
</head>
<body>
	<%
		String directory = application.getRealPath("/upload/");	// getRealpath()를 이용해 실제경로를 구하고
		String files[] = new File(directory).list();			// files 배열을 생성한다.
		// File클래스의 list()메서드는 경로의 파일들과 폴더를 문자열 배열로 반환한다.
		
		for(String file : files)	// file변수에 files배열에 있는 아이들을 순차적으로 넘겨준다.
		{
			out.write("<a href=\" " +request.getContextPath()+ "/downloadAction?file=" +
			java.net.URLEncoder.encode(file,"UTF-8") + "\">" + file + "</a><br>");
		} // 자바에서 제공되는 for(변수 : 배열) { } 형식의 반복문이다. 이때 배열의 자료형과 for문의 자료형은 일치해야한다.
	%>
</body>
</html>