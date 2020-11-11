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
    
<%--
	<h1>作品詳細</h1>
	<hr /> <!-- フレームワーク208より-->
	<table>
		<c:forEach items="${xList}" var="x" >
		<form:form modelAttribute="xModel">
	  	<tr id="s">
	   		<td>
	    	<img src="img/  " width="330" height="400" alt="  "/><!-- 画像 -->
	   		</td>
	   	</tr>
	 	<tr> <!--　リストが必要です DB product_Id,title,kind,amount,supervision  -->
			<td><c:out value="${x.title}"/></td>
			<td><c:out value="${x.kind}"/></td>
			<td><c:out value="${x.supervision}"/></td>			
			<td>
				<form action="form" method="post">
					<input type="submit" value="カートに入れる"/>
					<input type="hidden" name="itemNo" value="<%= %>"/>
				</form>
	 		</td>
		</tr>
		</form:form>
		</c:forEach>    
 	</table>
--%>
	<div id="containerDetail">
	    <div id="detailImage">
	        <img src="${pageContext.request.contextPath}/resources/images/detail001.jpg" width="210" height="300">
	    </div>
	    
	    <div id="detailText">
	      <div class="contents">
	            <div class="oldORnew">旧作</div>
	            <h1>＜タイトル＞終わった人</h1>
	      </div>
	      <table id="detailTbl">
	            <tr>
	                <th>監督</th>
	                <td>：</td>
	                <td>＜監督名＞</td>
	            </tr>
	            <tr>
	                <th>アーティスト</th>
	                <td>：</td>
	                <td>＜アーティスト名＞</td>
	             </tr>
	            <tr>
	                <th>ジャンル</th>
	                <td>：</td>
	                <td>＜ジャンル名＞</td>
	            </tr>
	            <tr>
	                <td colspan="3">＜商品内容＞<br />定年退職を迎えた男の第2の人生を、舘ひろし主演で描いたコメディドラマ。仕事ひと筋だった田代壮介は、定年の翌日から時間を持て余してしまう。美容師として忙しく働く妻・千草につい愚痴をこぼし、次第に距離を置かれた壮介は職を探し始めるが…。</td>
	            </tr>
	      </table>
	  </div>
	</div>
	<div id="inCart">
	    <h3 align="center"><a href="cart"><img src="${pageContext.request.contextPath}/resources/images/btn_cart.jpg" alt="お試しプラン" width="300" height="60"/></a></h3>
	</div>

	<!-------------- フッター ---------------> 
    <div id="footer">
    	<%@ include file="footer.jsp" %>
    </div>
</div>
</body>
</html>