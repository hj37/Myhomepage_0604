<%@page import="org.jsoup.nodes.Element"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset= UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		Document doc = Jsoup.connect("https://sports.news.naver.com/kbaseball/index.nhn").get();

		Elements elements = doc.select("ol.news_list");
		
		Element element = elements.get(0);
		
		Elements lis1 = element.select("li");
		Elements lis2 = element.select("a");


		for(Element e : lis1){
 			for(int i = 0; i < 2; i++){
				if(i == 1){
					out.print("<a href='https://sports.news.naver.com/"+e.attr("href")+"'>'"+e.select("a").text()+"'</a>");
				}else{
 					out.print( e.select("span.number").text() + "\t");
				}
 			}
 			out.print("<br>");
		}


		for(Element e : lis2){
			
				out.print("<a href='https://sports.news.naver.com/"+e.attr("href")+"'>'"+e.text()+"'</a>");
			
			
		}
	
		
		

%>
</body>
</html>