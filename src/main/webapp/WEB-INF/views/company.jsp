<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/hf.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/text.css"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>詳細情報</title>
</head>
<body>
<div id="container">
<!--------------- ヘッダー ---------------> 
<div id="header">
	<%@ include file="header.jsp" %>
</div>
<!-------------------------------------> 
    
	<div id="containerDetail2">
 		<h3>会社概要</h3>

		<table id="detailTbl2" border="1">
			<tr>
				<th>社名</th>
				<td>株式会社Music Life Agency</td>
			</tr>
			<tr>
				<th>資本金</th>
				<td>10百万円</td>
			</tr>
			<tr>
				<th>代表取締役社長</th>
				<td>●●　●●<!-- 増田 宗昭 --></td>
			</tr>
			<tr>
				<th>社員数</th>
				<td>150名</td>
			</tr>
			
			<tr>
				<th>事業内容</th>
				<td>インターネットのみのレンタルシステム</td>
			</tr>
			<tr>
				<th>所在地</th>
			<td>
				<b>新宿本店</b><br />〒150-0053  東京都渋谷区代々木2-9-2久保ビル4F<br />
				<b>池袋店</b><br />〒171-0021　東京都豊島区西池袋1-11-1メトロポリタンプラザビル20F<br />
				<b>横浜店</b><br />〒220-0011　横浜市西区高島2-19-12横浜スカイビル 20F<br />
				<b>名古屋店</b><br />〒450-6042　名古屋市中村区名駅1-1-4JRセントラルタワーズ42階<br />
				<b>梅田店</b><br />〒530-0001　大阪市北区梅田2-2-2ヒルトンプラザウエスト11F<br />
				<b>福岡店</b><br />〒810-0001　福岡市中央区天神1-1-1アクロス福岡ビル2階<br />
			</td>
			</tr>
		</table>
	</div>
	
<!-------------- フッター ---------------> 
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
<!-------------------------------------> 
		
</div>　<!--container終わり--> 
</body>
</html>